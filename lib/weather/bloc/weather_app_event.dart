part of 'weather_app_bloc.dart';

abstract class WeatherAppEvent extends Equatable {
  const WeatherAppEvent();
}

class FetchInitialCarouselData extends WeatherAppEvent {
  @override
  List<Object?> get props => [];
}

class FetchCities extends WeatherAppEvent {
  @override
  List<Object?> get props => [];
}

class FetchWeatherForCity extends WeatherAppEvent {
  const FetchWeatherForCity({required this.city});

  final City city;

  @override
  List<Object?> get props => [city];
}

class FetchCarouselData extends WeatherAppEvent {
  const FetchCarouselData();

  @override
  List<Object?> get props => [];
}

class CreateCarouselData extends WeatherAppEvent {
  const CreateCarouselData(this.cityId, this.weatherId);

  final int cityId;
  final int weatherId;

  @override
  List<Object?> get props => [cityId, weatherId];
}

class RemoveCarouselData extends WeatherAppEvent {
  const RemoveCarouselData(
    this.id,
  );

  final int id;

  @override
  List<Object?> get props => [id];
}

class FetchUserCurrentWeather extends WeatherAppEvent {
  const FetchUserCurrentWeather();

  @override
  List<Object?> get props => [];
}
