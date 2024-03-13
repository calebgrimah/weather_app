import 'dart:convert';

import '../domain_models.dart';

class CityWeather {
  final int? id;
  final City? city;
  final WeatherData? weather;

  const CityWeather({
    this.id,
    this.city,
    this.weather,
  });

  CityWeather copyWith({
    int? id,
    City? city,
    WeatherData? weather,
  }) {
    return CityWeather(
      id: id ?? this.id,
      city: city ?? this.city?.copyWith(),
      weather: weather ?? this.weather?.copyWith(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'city': city?.toJson(),
        'weather': weather?.toJson(),
      };

  factory CityWeather.fromJson(Map<String, dynamic> json) => CityWeather(
        id: json['id'] as int?,
        city: City.fromJson(json['city'] as Map<String, dynamic>),
        weather: WeatherData.fromJson(json['weather'] as Map<String, dynamic>),
      );

  @override
  String toString() {
    return 'CityWeather(id: $id, city: $city, weather: $weather)';
  }

  factory CityWeather.fromString(String data) {
    try {
      final jsonData = jsonDecode(data) as Map<String, dynamic>;
      return CityWeather.fromJson(jsonData);
    } on FormatException catch (e) {
      throw Exception("Invalid JSON format: $e");
    }
  }
}
