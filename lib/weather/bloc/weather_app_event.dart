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
