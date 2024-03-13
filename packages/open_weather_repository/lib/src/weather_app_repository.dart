import 'dart:convert';

import 'package:domain_models/domain_models.dart';
import 'package:geolocator/geolocator.dart';
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
  WeatherAppRepository({OpenWeatherApi? weatherApiClient})
      : remoteApi = weatherApiClient ?? OpenWeatherApi();

  // f getIsarBox;
  static const _currentVisibleWeatherId = 'last-viewed-weather-id';

  final OpenWeatherApi remoteApi;

  Future<List<CityEntity>> fetchCachedCities() async {
    try {
      var isar = await _getIsarBox();
      if (isar.cityEntitys.where().isEmptySync()) {
        //no cities in the db
        final String response = await rootBundle.loadString('assets/ng.json');
        List<dynamic> data = await json.decode(response);
        //retrieve cities from file
        List<City> rawCities =
            data.map((rCity) => City.fromJson(rCity)).toList();
        //change to city db type
        List<CityEntity> cities = rawCities
            .map((rCity) => CityEntity()
              ..longitude = rCity.longitude
              ..city = rCity.city
              ..latitude = rCity.latitude
              ..capital = rCity.capital
              ..iso2 = rCity.iso2
              ..population = rCity.population)
            .toList();
        //save to db
        await isar.writeTxn(() async {
          await isar.cityEntitys.putAll(cities.sublist(0, 16));
        });
      }
      //retrieve 16 items
      return isar.cityEntitys.where().findAll();
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching cities -> ${e.toString()}");
      }
      return Future.value([]);
    }
  }

  Future<CityEntity?> fetchSingleCity(int cityId) async {
    try {
      final isar = await _getIsarBox();
      final city = isar.cityEntitys.get(cityId);
      return Future.value(city);
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching city -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<WeatherEntity?> fetchWeatherForUser() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        return Future.error('Location services are disabled.');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      final userLocation = await Geolocator.getCurrentPosition();
      final weatherResponse = await remoteApi.getCurrentWeatherInformation(
          longitude: "${userLocation.longitude}",
          latittude: "${userLocation.latitude}");
      final cachedWeather = weatherResponse.toCacheModel();
      return Future.value(cachedWeather);
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching city -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<WeatherEntity?> fetchSingleWeather(int weatherId) async {
    try {
      final isar = await _getIsarBox();
      final weather = isar.weatherEntitys.get(weatherId);
      return Future.value(weather);
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching weather -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<CarouselEntityData?> addCarouselData(int cityId, int weatherId) async {
    try {
      final isar = await _getIsarBox();
      final carouselData = CarouselEntityData()
        ..cityId = cityId
        ..weatherId = weatherId;
      await isar.writeTxn(() async {
        await isar.carouselEntityDatas.put(carouselData);
      });
      return Future.value(carouselData);
    } catch (e) {
      if (kDebugMode) {
        print("Error adding carousel data -> ${e.toString()}");
      }
      return Future.value(null);
    }
  }

  Future<List<CarouselEntityData>> fetchSavedCarouselData() async {
    try {
      final isar = await _getIsarBox();
      final cData = await isar.carouselEntityDatas.where().findAll();
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
        final success = await isar.carouselEntityDatas.delete(carouselDataId);
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
    Isar? isarInstance = Isar.getInstance();
    if (isarInstance != null) {
      return isarInstance;
    }
    // If not open, open a new instance
    final isar = await Isar.open([
      WeatherEntitySchema,
      CityEntitySchema,
      EnumCollectionSchema,
      CarouselEntityDataSchema
    ], directory: dir.path);
    return isar;
  }
}
