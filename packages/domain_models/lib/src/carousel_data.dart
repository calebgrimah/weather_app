import 'dart:convert';

class CarouselData {
  final int? id;
  final int? cityId;
  final int? weatherId;

  const CarouselData({
    this.id,
    this.cityId,
    this.weatherId,
  });

  CarouselData copyWith({
    int? id,
    int? cityId,
    int? weatherId,
  }) {
    return CarouselData(
      id: id ?? this.id,
      cityId: cityId ?? this.cityId,
      weatherId: weatherId ?? this.weatherId,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'cityId': cityId,
        'weatherId': weatherId,
      };

  factory CarouselData.fromJson(Map<String, dynamic> json) => CarouselData(
        id: json['id'] as int?,
        cityId: json['cityId'] as int?,
        weatherId: json['weatherId'] as int?,
      );

  @override
  String toString() {
    return 'WeatherLocation(id: $id, cityId: $cityId, weatherId: $weatherId)';
  }

  factory CarouselData.fromString(String data) {
    try {
      final jsonData = jsonDecode(data) as Map<String, dynamic>;
      return CarouselData.fromJson(jsonData);
    } on FormatException catch (e) {
      throw Exception("Invalid JSON format: $e");
    }
  }
}
