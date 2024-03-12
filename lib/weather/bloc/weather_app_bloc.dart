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
  }

  final WeatherAppRepository weatherAppRepository;
}
