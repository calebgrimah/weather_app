import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mockito/mockito.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:open_weather_repository/src/models/carousel_data.dart';
import 'package:open_weather_repository/src/models/models.dart';
import 'package:path_provider/path_provider.dart';

// Mock OpenWeatherApi
class MockOpenWeatherApi extends Mock implements OpenWeatherApi {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late WeatherAppRepository repository;
  late MockOpenWeatherApi mockOpenWeatherApi;
  late Isar isarBox;
  late Directory dirTest;

  setUp(() async {
    mockOpenWeatherApi = MockOpenWeatherApi();
    repository = WeatherAppRepository(weatherApiClient: mockOpenWeatherApi);
    dirTest = Directory.systemTemp.createTempSync();
    await Isar.initializeIsarCore(download: true);
    if (Isar.instanceNames.isEmpty) {
      isarBox = await Isar.open(
          [CarouselEntityDataSchema, WeatherEntitySchema, CityEntitySchema],
          directory: dirTest.path, name: 'weatherAppInstance');
    }
  });

  test("Open an instance on the Isar database", () async {
    final isOpen = isarBox.isOpen;
    expect(isOpen, true);
  });

  tearDownAll(() async {
    await isarBox.close(deleteFromDisk: true);
  });

  test("read cities object", () async {
    await isarBox.writeTxn(() async {
      await isarBox.cityEntitys.put(CityEntity()..id = 1);
    });
    final retrievedCity = await isarBox.cityEntitys.get(1);
    expect(retrievedCity?.id, 1);
  });

  test("create a carousel object", () async {
    await isarBox.writeTxn(() async {
      await isarBox.carouselEntityDatas.put(CarouselEntityData()..cityId = 1);
    });
    final bdgt = await isarBox.carouselEntityDatas.get(1);
    expect(bdgt?.id, 1);
    await isarBox.writeTxn(() async {
      await isarBox.carouselEntityDatas.clear();
    });
  });
}
