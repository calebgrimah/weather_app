import 'dart:convert';

class City {
  final int? id;
  final String? city;
  final String? latitude;
  final String? longitude;
  final String? iso2;
  final String? capital;
  final String? population;

  const City({
    this.id,
    this.city,
    this.latitude,
    this.longitude,
    this.iso2,
    this.capital,
    this.population,
  });

  City copyWith({
    int? id,
    String? city,
    String? latitude,
    String? longitude,
    String? iso2,
    String? capital,
    String? population,
  }) {
    return City(
      id: id ?? this.id,
      city: city ?? this.city,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      iso2: iso2 ?? this.iso2,
      capital: capital ?? this.capital,
      population: population ?? this.population,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'city': city,
        'latitude': latitude,
        'longitude': longitude,
        'iso2': iso2,
        'capital': capital,
        'population': population,
      };

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json['id'] as int?,
        city: json['city'] as String?,
        latitude: json['lat'] as String?,
        longitude: json['lng'] as String?,
        iso2: json['iso2'] as String?,
        capital: json['admin_name'] as String?,
        population: json['population'] as String?,
      );

  @override
  String toString() {
    return 'City(id: $id, city: $city, latitude: $latitude, longitude: $longitude, iso2: $iso2, capital: $capital, population: $population)';
  }

  factory City.fromString(String data) {
    try {
      final jsonData = jsonDecode(data) as Map<String, dynamic>;
      return City.fromJson(jsonData);
    } on FormatException catch (e) {
      throw Exception("Invalid JSON format: $e");
    }
  }
}
