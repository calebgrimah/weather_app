import 'dart:convert';

import 'package:domain_models/domain_models.dart' as raw_city;
import 'package:open_weather_api/open_weather_api.dart' hide Weather;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:open_weather_repository/src/mappers/remote_to_cached_weather.dart';
import 'package:open_weather_repository/src/models/carousel_data.dart';
import 'package:open_weather_repository/src/models/models.dart';
import 'package:open_weather_repository/src/models/weather.dart';
import 'package:path_provider/path_provider.dart';

import 'models/city.dart';

class WeatherAppRepository {
  WeatherAppRepository({
    required this.remoteApi,
  });

  // f getIsarBox;
  static const _currentVisibleWeatherId = 'last-viewed-weather-id';

  final OpenWeatherApi remoteApi;

  Future<List<City>> fetchCachedCities() async {
    try {
      var isar = await _getIsarBox();
      if (isar.citys.where().isEmptySync()) {
        //no cities in the db
        final String response =
            await rootBundle.loadString('assets/json/ng.json');
        List<dynamic> data = await json.decode(response);
        //retrieve cities from file
        List<raw_city.City> rawCities =
            data.map((rCity) => raw_city.City.fromJson(rCity)).toList();
        //change to city db type
        List<City> cities = rawCities
            .map((rCity) => City()
              ..longitude = rCity.lng
              ..latitude = rCity.lat
              ..capital = rCity.capital
              ..country = rCity.country
              ..iso2 = rCity.iso2
              ..adminName = rCity.adminName
              ..population = rCity.population
              ..populationProper = rCity.populationProper)
            .toList();
        //save to db
        await isar.writeTxn(() async {
          await isar.citys.putAll(cities.sublist(0, 16));
        });
      }
      //retrieve 16 items
      return isar.citys.where().findAll();
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching cities -> ${e.toString()}");
      }
      return Future.value([]);
    }
  }

  Future<City?> fetchSingleCity(int cityId) async {
    try {
      final isar = await _getIsarBox();
      final city = isar.citys.get(cityId);
      return Future.value(city);
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching city -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<CarouselData?> addCarouselData(int cityId, int weatherId) async {
    try {
      final isar = await _getIsarBox();
      final carouselData = CarouselData()
        ..cityId = cityId
        ..weatherId = weatherId;
      await isar.carouselDatas.put(carouselData);
      return Future.value(carouselData);
    } catch (e) {
      if (kDebugMode) {
        print("Error adding carousel data -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<List<CarouselData>> fetchSavedCarouselData() async {
    try {
      final isar = await _getIsarBox();
      final cData = await isar.carouselDatas.where().findAll();
      return Future.value(cData);
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching carousel data -> ${e.toString()}");
      }
      return Future.value([]);
    }
  }

  Future<void> removeSavedCarouselData(int carouselDataId) async {
    try {
      final isar = await _getIsarBox();
      await isar.writeTxn(() async {
        final success = await isar.carouselDatas.delete(carouselDataId);
        if (kDebugMode) {
          print('carousel data deleted: $success');
        }
      });
      return Future.value();
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching carousel data -> ${e.toString()}");
      }
      return Future.value([]);
    }
  }

  Future<WeatherEntity?> fetchCachedWeatherForCity(int cityId) async {
    try {
      var isar = await _getIsarBox();
      //check if we have a weather value for it
      final savedWeather =
          await isar.weatherEntitys.filter().cityIdEqualTo(cityId).findFirst();
      if (savedWeather == null) {
        final city = await fetchSingleCity(cityId);
        if (city != null && city.longitude != null && city.latitude != null) {
          final weatherResponse = await remoteApi.getCurrentWeatherInformation(
              longitude: city.longitude!, latittude: city.latitude!);
          final cachedWeather = weatherResponse.toCacheModel()..cityId = cityId;
          await isar.writeTxn(() async {
            await isar.weatherEntitys.put(cachedWeather);
          });
          return cachedWeather;
        }
        return null;
      }
      return savedWeather;
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching city -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<Isar> _getIsarBox() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
        [WeatherEntitySchema, CitySchema, EnumCollectionSchema],
        directory: dir.path);
    return isar;
  }
}
