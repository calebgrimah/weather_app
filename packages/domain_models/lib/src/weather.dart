import 'dart:convert';

class WeatherData {
  final String? id;
  final String? cityId;
  final String? cityName;
  final String? longitude;
  final String? latitude;
  final String? rainHeight;
  final String? pressure;
  final String? description;
  final String? icon;
  final String? temperature;
  final String? windSpeed;

  const WeatherData({
    this.id,
    this.cityId,
    this.longitude,
    this.latitude,
    this.rainHeight,
    this.pressure,
    this.cityName,
    this.description,
    this.icon,
    this.temperature,
    this.windSpeed,
  });

  WeatherData copyWith({
    String? id,
    String? cityId,
    String? longitude,
    String? latitude,
    String? rainHeight,
    String? pressure,
    String? description,
    String? icon,
    String? temperature,
    String? windSpeed,
    String? cityName,
  }) {
    return WeatherData(
      id: id ?? this.id,
      cityId: cityId ?? this.cityId,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      rainHeight: rainHeight ?? this.rainHeight,
      pressure: pressure ?? this.pressure,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      temperature: temperature ?? this.temperature,
      windSpeed: windSpeed ?? this.windSpeed,
      cityName: cityName ?? this.cityName,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'cityId': cityId,
        'longitude': longitude,
        'latitude': latitude,
        'rainHeight': rainHeight,
        'pressure': pressure,
        'description': description,
        'icon': icon,
        'temperature': temperature,
        'windSpeed': windSpeed,
        'cityName': cityName,
      };

  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        id: json['id'] as String?,
        cityId: json['cityId'] as String?,
        longitude: json['longitude'] as String?,
        latitude: json['latitude'] as String?,
        rainHeight: json['rainHeight'] as String?,
        pressure: json['pressure'] as String?,
        description: json['description'] as String?,
        icon: json['icon'] as String?,
        temperature: json['temperature'] as String?,
        cityName: json['name'] as String?,
        windSpeed: json['windSpeed'] as String?,
      );

  @override
  String toString() {
    return 'WeatherData(id: $id, cityId: $cityId,windSpeed: $windSpeed, longitude: $longitude, latitude: $latitude, rainHeight: $rainHeight, pressure: $pressure, description: $description, icon: $icon, temperature: $temperature)';
  }

  factory WeatherData.fromString(String data) {
    try {
      final jsonData = jsonDecode(data) as Map<String, dynamic>;
      return WeatherData.fromJson(jsonData);
    } on FormatException catch (e) {
      throw Exception("Invalid JSON format: $e");
    }
  }
}
