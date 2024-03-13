import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain_models/domain_models.dart';
import 'package:equatable/equatable.dart';
import 'package:open_weather_repository/open_weather_repository.dart';

part 'weather_app_event.dart';

part 'weather_app_state.dart';

class WeatherAppBloc extends Bloc<WeatherAppEvent, WeatherAppState> {
  WeatherAppBloc({
    required this.weatherAppRepository,
  }) : super(WeatherAppInitial()) {
    on<WeatherAppEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<FetchWeatherForCity>((event, emit) async {
      emit(FetchWeatherForCityLoading());
      try {
        final response = await weatherAppRepository
            .fetchCachedWeatherForCity(event.city.id ?? 0);
        if (response == null) {
          emit(const FetchWeatherForCityError(
              error: "Failed to fetch weather for city"));
        } else {
          emit(FetchWeatherForCitySuccess(weatherData: response));
        }
      } catch (e) {
        emit(FetchWeatherForCityError(error: e.toString()));
      }
    });

    on<CreateCarouselData>((event, emit) async {
      emit(CreateCarouselDataLoading());
      try {
        await weatherAppRepository.addCarouselData(
            event.cityId, event.weatherId);
        emit(const CreateCarouselDataSuccess());
      } catch (e) {
        emit(CreateCarouselDataError(error: e.toString()));
      }
    });

    on<FetchUserCurrentWeather>((event, emit) async {
      emit(FetchUserWeatherLoading());
      try {
        final userWeather = await weatherAppRepository.fetchWeatherForUser();
        print(
          "user weather datt -> ${userWeather.toString()}",
        );
        if (userWeather == null) {
          emit(const FetchUserWeatherError(error: "Error Fetching user data"));
        } else {
          emit(FetchUserWeatherSuccess(userWeather));
        }
      } catch (e) {
        emit(FetchUserWeatherError(error: e.toString()));
      }
    });

    on<RemoveCarouselData>((event, emit) async {
      emit(RemoveCarouselDataLoading());
      try {
        await weatherAppRepository.removeSavedCarouselData(event.id);
        emit(const RemoveCarouselDataSuccess());
      } catch (e) {
        emit(RemoveCarouselDataError(error: e.toString()));
      }
    });

    on<FetchCarouselData>((event, emit) async {
      emit(FetchCarouselDataLoading());
      try {
        final response = await weatherAppRepository.fetchSavedCarouselData();
        final cityWeatherList = List<CityWeather>.empty(growable: true);
        for (final data in response) {
          final city = await weatherAppRepository.fetchSingleCity(
            data.cityId ?? 0,
          );
          final weather = await weatherAppRepository.fetchSingleWeather(
            data.weatherId ?? 0,
          );
          cityWeatherList.add(
            CityWeather(
              id: data.id,
              city: city,
              weather: weather,
            ),
          );
        }
        emit(FetchCarouselDataSuccess(cityWeather: cityWeatherList));
      } catch (e) {
        emit(FetchWeatherForCityError(error: e.toString()));
      }
    });

    on<FetchCities>((event, emit) async {
      emit(FetchCityLoading());
      try {
        final response = await weatherAppRepository.fetchCachedCities();
        emit(FetchCitiesSuccess(cities: response));
      } catch (e) {
        emit(FetchCityError(error: e.toString()));
      }
    });
  }

  final WeatherAppRepository weatherAppRepository;
}
