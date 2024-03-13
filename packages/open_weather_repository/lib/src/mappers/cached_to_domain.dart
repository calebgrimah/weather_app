import 'package:domain_models/domain_models.dart';
import 'package:open_weather_repository/src/models/carousel_data.dart';
import 'package:open_weather_repository/src/models/models.dart';

extension WeatherCachedToDomainModel on WeatherEntity {
  WeatherData toDomainWeatherModel() {
    return WeatherData(
        id: weatherId.toString(),
        cityId: cityId.toString(),
        longitude: longitude,
        latitude: lattitude,
        icon: weatherIcon,
        cityName: name,
        description: weatherDescription,
        rainHeight: rainHeight.toString(),
        temperature: weatherTemperature.toString(),
        windSpeed: windSpeed.toString());
  }
}

extension CityCachedToDomainModel on CityEntity {
  City toDomainCityModel() {
    return City(
        id: id,
        city: city,
        longitude: longitude,
        latitude: latitude,
        iso2: iso2,
        capital: capital,
        population: population ?? populationProper.toString());
  }
}

extension CarouselCachedToDomainModel on CarouselEntityData {
  CarouselData toDomainCarouselModel() {
    return CarouselData(
      id: id,
      cityId: cityId,
      weatherId: weatherId,
    );
  }
}
