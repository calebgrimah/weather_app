part of 'weather_app_bloc.dart';

abstract class WeatherAppState extends Equatable {
  const WeatherAppState();
}

class WeatherAppInitial extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class FetchWeatherForCityLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class FetchWeatherForCityError extends WeatherAppState {
  const FetchWeatherForCityError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class FetchWeatherForCitySuccess extends WeatherAppState {
  const FetchWeatherForCitySuccess({required this.weatherData});
  final WeatherData weatherData;
  @override
  List<Object> get props => [weatherData];
}

class FetchCitiesSuccess extends WeatherAppState {
  const FetchCitiesSuccess({required this.cities});
  final List<City> cities;
  @override
  List<Object> get props => [cities];
}

class FetchCityLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class FetchCityError extends WeatherAppState {
  const FetchCityError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class FetchCarouselDataSuccess extends WeatherAppState {
  const FetchCarouselDataSuccess({required this.cityWeather});
  final List<CityWeather> cityWeather;
  @override
  List<Object> get props => [cityWeather];
}

class FetchCarouselDataLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class FetchCarouselDataError extends WeatherAppState {
  const FetchCarouselDataError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class CreateCarouselDataSuccess extends WeatherAppState {
  const CreateCarouselDataSuccess();
  @override
  List<Object> get props => [];
}

class CreateCarouselDataLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class CreateCarouselDataError extends WeatherAppState {
  const CreateCarouselDataError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class RemoveCarouselDataSuccess extends WeatherAppState {
  const RemoveCarouselDataSuccess();
  @override
  List<Object> get props => [];
}

class RemoveCarouselDataLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class RemoveCarouselDataError extends WeatherAppState {
  const RemoveCarouselDataError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class FetchUserWeatherSuccess extends WeatherAppState {
  const FetchUserWeatherSuccess(this.userWeather);
  final WeatherData userWeather;
  @override
  List<Object> get props => [userWeather];
}

class FetchUserWeatherLoading extends WeatherAppState {
  @override
  List<Object> get props => [];
}

class FetchUserWeatherError extends WeatherAppState {
  const FetchUserWeatherError({required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}
