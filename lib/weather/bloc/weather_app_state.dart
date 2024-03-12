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
  const FetchWeatherForCitySuccess({required this.error});
  final WeatherEntity error;
  @override
  List<Object> get props => [error];
}
