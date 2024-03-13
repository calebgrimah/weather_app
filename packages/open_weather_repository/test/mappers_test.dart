import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:open_weather_repository/src/models/carousel_data.dart';
import 'package:open_weather_repository/src/models/city.dart';
import 'package:open_weather_repository/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('WeatherCachedToDomainModel', () {
    test('toDomainWeatherModel', () {
      final weatherEntity = WeatherEntity()
        ..weatherId = 1
        ..cityId = 2
        ..longitude = "3.0";

      final weatherData = weatherEntity.toDomainWeatherModel();

      expect(weatherData.id, '1');
      expect(weatherData.cityId, '2');
      expect(weatherData.longitude, "3.0");
      // expect(weatherData.latitude, 4.0);
      // expect(weatherData.icon, 'icon');
      // expect(weatherData.cityName, 'cityName');
      // expect(weatherData.description, 'description');
      // expect(weatherData.rainHeight, '5.0');
      // expect(weatherData.temperature, '6.0');
      // expect(weatherData.windSpeed, '7.0');
    });
  });

  group('CityCachedToDomainModel', () {
    test('toDomainCityModel', () {
      final cityEntity = CityEntity()
        ..id = 1
        ..city = "kano";

      final city = cityEntity.toDomainCityModel();

      expect(city.id, 1);
      expect(city.city, 'kano');
    });
  });

  group('CarouselCachedToDomainModel', () {
    test('toDomainCarouselModel', () {
      final carouselEntityData = CarouselEntityData()
        ..id = 1
        ..cityId = 2
        ..weatherId = 3;

      final carouselData = carouselEntityData.toDomainCarouselModel();

      expect(carouselData.id, 1);
      expect(carouselData.cityId, 2);
      expect(carouselData.weatherId, 3);
    });
  });
}
