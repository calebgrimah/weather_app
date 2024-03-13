import 'package:open_weather_api/open_weather_api.dart';

import '../models/models.dart';

//
extension WeatherRemoteToCachedModel on CurrentWeatherResponse {
  WeatherEntity toCacheModel() {
    return WeatherEntity()
      ..name = name
      ..base = base
      ..cod = cod?.toDouble()
      ..dt = dt?.toDouble()
      ..timezone = timezone?.toDouble()
      ..visibility = visibility?.toInt()
      ..lattitude = coord?.lat.toString()
      ..longitude = coord?.lon.toString()
      ..weatherTemperature = main?.temp?.toDouble()
      ..feelsLike = main?.temp?.toDouble()
      ..weatherTempMin = main?.tempMin?.toDouble()
      ..weatherTempMax = main?.tempMax?.toDouble()
      ..weatherPressure = main?.pressure?.toDouble()
      ..weatherHumidity = main?.humidity?.toDouble()
      ..weatherSeaLevel = main?.seaLevel?.toDouble()
      ..weatherGroundLevel = main?.grndLevel?.toDouble()
      ..rainHeight = rain?.h?.toDouble()
      ..windDegree = wind?.deg?.toDouble()
      ..windGust = wind?.gust?.toDouble()
      ..windSpeed = wind?.speed?.toDouble()
      ..weatherDescription = weather?.first?.description
      ..weatherIcon = weather?.first.icon
      ..weatherMain = weather?.first.main;
  }
}
