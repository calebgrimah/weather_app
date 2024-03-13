import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:open_weather_api/src/url_builder.dart';

import 'models/response/current_weather_response.dart';

class OpenWeatherApi {
  OpenWeatherApi({
    @visibleForTesting Dio? dio,
    @visibleForTesting UrlBuilder? urlBuilder,
  })  : _dio = dio ?? Dio(),
        _urlBuilder = urlBuilder ?? const UrlBuilder() {
    if (_dio != null) {
      _dio.interceptors.add(
        LogInterceptor(responseBody: false),
      );
    }
  }

  final Dio _dio;
  final UrlBuilder _urlBuilder;

  Future<CurrentWeatherResponse> getCurrentWeatherInformation({
    required String longitude,
    required String latittude,
  }) async {
    final url = _urlBuilder.buildGetCurrentWeatherUrl(longitude, latittude);
    final response = await _dio.get(url);
    final jsonObject = response.data;
    final currentWeatherForLocation =
        CurrentWeatherResponse.fromJson(jsonObject);
    return currentWeatherForLocation;
  }
}
