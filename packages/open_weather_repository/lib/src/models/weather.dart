import 'dart:core';

import 'package:isar/isar.dart';

part 'weather.g.dart';

@collection
class WeatherEntity {
  Id? weatherId;
  int? cityId; //city this record is for
  String? base;
  int? visibility;
  double? dt;
  double? timezone;
  double? id;
  String? name;
  double? cod;
  //sys
  double? type;
  String? country;
  double? sunrise;
  double? sunset;
  //clouds
  double? all;
  //rain
  double? rainHeight;
  //wind
  double? windSpeed;
  double? windDegree;
  double? windGust;
  //main weather
  double? weatherTemperature;
  double? feelsLike;
  double? weatherTempMin;
  double? weatherTempMax;
  double? weatherPressure;
  double? weatherHumidity;
  double? weatherSeaLevel;
  double? weatherGroundLevel;
  //weather inner
  String? weatherMain;
  String? weatherDescription;
  String? weatherIcon;
  //latlng
  String? longitude;
  String? lattitude;
}
