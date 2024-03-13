import 'dart:core';

import 'package:isar/isar.dart';

part 'city.g.dart';

@collection
class CityEntity {
  Id? id;
  String? city;
  String? latitude;
  String? longitude;
  String? country;
  String? iso2;
  String? adminName;
  String? capital;
  String? population;
  String? populationProper;
}
