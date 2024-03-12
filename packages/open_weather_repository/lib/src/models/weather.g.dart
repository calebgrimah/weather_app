// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeatherEntityCollection on Isar {
  IsarCollection<WeatherEntity> get weatherEntitys => this.collection();
}

const WeatherEntitySchema = CollectionSchema(
  name: r'WeatherEntity',
  id: 4336478963168393718,
  properties: {
    r'all': PropertySchema(
      id: 0,
      name: r'all',
      type: IsarType.double,
    ),
    r'base': PropertySchema(
      id: 1,
      name: r'base',
      type: IsarType.string,
    ),
    r'cityId': PropertySchema(
      id: 2,
      name: r'cityId',
      type: IsarType.long,
    ),
    r'cod': PropertySchema(
      id: 3,
      name: r'cod',
      type: IsarType.double,
    ),
    r'country': PropertySchema(
      id: 4,
      name: r'country',
      type: IsarType.string,
    ),
    r'dt': PropertySchema(
      id: 5,
      name: r'dt',
      type: IsarType.double,
    ),
    r'feelsLike': PropertySchema(
      id: 6,
      name: r'feelsLike',
      type: IsarType.double,
    ),
    r'id': PropertySchema(
      id: 7,
      name: r'id',
      type: IsarType.double,
    ),
    r'lattitude': PropertySchema(
      id: 8,
      name: r'lattitude',
      type: IsarType.string,
    ),
    r'longitude': PropertySchema(
      id: 9,
      name: r'longitude',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 10,
      name: r'name',
      type: IsarType.string,
    ),
    r'rainHeight': PropertySchema(
      id: 11,
      name: r'rainHeight',
      type: IsarType.double,
    ),
    r'sunrise': PropertySchema(
      id: 12,
      name: r'sunrise',
      type: IsarType.double,
    ),
    r'sunset': PropertySchema(
      id: 13,
      name: r'sunset',
      type: IsarType.double,
    ),
    r'timezone': PropertySchema(
      id: 14,
      name: r'timezone',
      type: IsarType.double,
    ),
    r'type': PropertySchema(
      id: 15,
      name: r'type',
      type: IsarType.double,
    ),
    r'visibility': PropertySchema(
      id: 16,
      name: r'visibility',
      type: IsarType.long,
    ),
    r'weatherDescription': PropertySchema(
      id: 17,
      name: r'weatherDescription',
      type: IsarType.string,
    ),
    r'weatherGroundLevel': PropertySchema(
      id: 18,
      name: r'weatherGroundLevel',
      type: IsarType.double,
    ),
    r'weatherHumidity': PropertySchema(
      id: 19,
      name: r'weatherHumidity',
      type: IsarType.double,
    ),
    r'weatherIcon': PropertySchema(
      id: 20,
      name: r'weatherIcon',
      type: IsarType.string,
    ),
    r'weatherMain': PropertySchema(
      id: 21,
      name: r'weatherMain',
      type: IsarType.string,
    ),
    r'weatherPressure': PropertySchema(
      id: 22,
      name: r'weatherPressure',
      type: IsarType.double,
    ),
    r'weatherSeaLevel': PropertySchema(
      id: 23,
      name: r'weatherSeaLevel',
      type: IsarType.double,
    ),
    r'weatherTempMax': PropertySchema(
      id: 24,
      name: r'weatherTempMax',
      type: IsarType.double,
    ),
    r'weatherTempMin': PropertySchema(
      id: 25,
      name: r'weatherTempMin',
      type: IsarType.double,
    ),
    r'weatherTemperature': PropertySchema(
      id: 26,
      name: r'weatherTemperature',
      type: IsarType.double,
    ),
    r'windDegree': PropertySchema(
      id: 27,
      name: r'windDegree',
      type: IsarType.double,
    ),
    r'windGust': PropertySchema(
      id: 28,
      name: r'windGust',
      type: IsarType.double,
    ),
    r'windSpeed': PropertySchema(
      id: 29,
      name: r'windSpeed',
      type: IsarType.double,
    )
  },
  estimateSize: _weatherEntityEstimateSize,
  serialize: _weatherEntitySerialize,
  deserialize: _weatherEntityDeserialize,
  deserializeProp: _weatherEntityDeserializeProp,
  idName: r'weatherId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _weatherEntityGetId,
  getLinks: _weatherEntityGetLinks,
  attach: _weatherEntityAttach,
  version: '3.1.0',
);

int _weatherEntityEstimateSize(
  WeatherEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.base;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lattitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.longitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weatherDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weatherIcon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weatherMain;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _weatherEntitySerialize(
  WeatherEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.all);
  writer.writeString(offsets[1], object.base);
  writer.writeLong(offsets[2], object.cityId);
  writer.writeDouble(offsets[3], object.cod);
  writer.writeString(offsets[4], object.country);
  writer.writeDouble(offsets[5], object.dt);
  writer.writeDouble(offsets[6], object.feelsLike);
  writer.writeDouble(offsets[7], object.id);
  writer.writeString(offsets[8], object.lattitude);
  writer.writeString(offsets[9], object.longitude);
  writer.writeString(offsets[10], object.name);
  writer.writeDouble(offsets[11], object.rainHeight);
  writer.writeDouble(offsets[12], object.sunrise);
  writer.writeDouble(offsets[13], object.sunset);
  writer.writeDouble(offsets[14], object.timezone);
  writer.writeDouble(offsets[15], object.type);
  writer.writeLong(offsets[16], object.visibility);
  writer.writeString(offsets[17], object.weatherDescription);
  writer.writeDouble(offsets[18], object.weatherGroundLevel);
  writer.writeDouble(offsets[19], object.weatherHumidity);
  writer.writeString(offsets[20], object.weatherIcon);
  writer.writeString(offsets[21], object.weatherMain);
  writer.writeDouble(offsets[22], object.weatherPressure);
  writer.writeDouble(offsets[23], object.weatherSeaLevel);
  writer.writeDouble(offsets[24], object.weatherTempMax);
  writer.writeDouble(offsets[25], object.weatherTempMin);
  writer.writeDouble(offsets[26], object.weatherTemperature);
  writer.writeDouble(offsets[27], object.windDegree);
  writer.writeDouble(offsets[28], object.windGust);
  writer.writeDouble(offsets[29], object.windSpeed);
}

WeatherEntity _weatherEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherEntity();
  object.all = reader.readDoubleOrNull(offsets[0]);
  object.base = reader.readStringOrNull(offsets[1]);
  object.cityId = reader.readLongOrNull(offsets[2]);
  object.cod = reader.readDoubleOrNull(offsets[3]);
  object.country = reader.readStringOrNull(offsets[4]);
  object.dt = reader.readDoubleOrNull(offsets[5]);
  object.feelsLike = reader.readDoubleOrNull(offsets[6]);
  object.id = reader.readDoubleOrNull(offsets[7]);
  object.lattitude = reader.readStringOrNull(offsets[8]);
  object.longitude = reader.readStringOrNull(offsets[9]);
  object.name = reader.readStringOrNull(offsets[10]);
  object.rainHeight = reader.readDoubleOrNull(offsets[11]);
  object.sunrise = reader.readDoubleOrNull(offsets[12]);
  object.sunset = reader.readDoubleOrNull(offsets[13]);
  object.timezone = reader.readDoubleOrNull(offsets[14]);
  object.type = reader.readDoubleOrNull(offsets[15]);
  object.visibility = reader.readLongOrNull(offsets[16]);
  object.weatherDescription = reader.readStringOrNull(offsets[17]);
  object.weatherGroundLevel = reader.readDoubleOrNull(offsets[18]);
  object.weatherHumidity = reader.readDoubleOrNull(offsets[19]);
  object.weatherIcon = reader.readStringOrNull(offsets[20]);
  object.weatherId = id;
  object.weatherMain = reader.readStringOrNull(offsets[21]);
  object.weatherPressure = reader.readDoubleOrNull(offsets[22]);
  object.weatherSeaLevel = reader.readDoubleOrNull(offsets[23]);
  object.weatherTempMax = reader.readDoubleOrNull(offsets[24]);
  object.weatherTempMin = reader.readDoubleOrNull(offsets[25]);
  object.weatherTemperature = reader.readDoubleOrNull(offsets[26]);
  object.windDegree = reader.readDoubleOrNull(offsets[27]);
  object.windGust = reader.readDoubleOrNull(offsets[28]);
  object.windSpeed = reader.readDoubleOrNull(offsets[29]);
  return object;
}

P _weatherEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readDoubleOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    case 29:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weatherEntityGetId(WeatherEntity object) {
  return object.weatherId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _weatherEntityGetLinks(WeatherEntity object) {
  return [];
}

void _weatherEntityAttach(
    IsarCollection<dynamic> col, Id id, WeatherEntity object) {
  object.weatherId = id;
}

extension WeatherEntityQueryWhereSort
    on QueryBuilder<WeatherEntity, WeatherEntity, QWhere> {
  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhere> anyWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeatherEntityQueryWhere
    on QueryBuilder<WeatherEntity, WeatherEntity, QWhereClause> {
  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhereClause>
      weatherIdEqualTo(Id weatherId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: weatherId,
        upper: weatherId,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhereClause>
      weatherIdNotEqualTo(Id weatherId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: weatherId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: weatherId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: weatherId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: weatherId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhereClause>
      weatherIdGreaterThan(Id weatherId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: weatherId, includeLower: include),
      );
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhereClause>
      weatherIdLessThan(Id weatherId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: weatherId, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterWhereClause>
      weatherIdBetween(
    Id lowerWeatherId,
    Id upperWeatherId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerWeatherId,
        includeLower: includeLower,
        upper: upperWeatherId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeatherEntityQueryFilter
    on QueryBuilder<WeatherEntity, WeatherEntity, QFilterCondition> {
  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      allIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'all',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      allIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'all',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> allEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'all',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      allGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'all',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> allLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'all',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> allBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'all',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'base',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'base',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> baseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> baseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'base',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'base',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> baseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'base',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'base',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      baseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'base',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      cityIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      codIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cod',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      codIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cod',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> codEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cod',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      codGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cod',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> codLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cod',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> codBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> dtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dt',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      dtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dt',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> dtEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dt',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      dtGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dt',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> dtLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dt',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> dtBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feelsLike',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feelsLike',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feelsLike',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      feelsLikeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feelsLike',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> idEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      idGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> idLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> idBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lattitude',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lattitude',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lattitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lattitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lattitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lattitude',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      lattitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lattitude',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'longitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      longitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'longitude',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rainHeight',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rainHeight',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rainHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rainHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rainHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      rainHeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rainHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunrise',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunrise',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunrise',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunrise',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunrise',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunriseBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunrise',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunset',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunset',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunset',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunset',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunset',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      sunsetBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezone',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezone',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      timezoneBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> typeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      typeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      typeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition> typeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibility',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      visibilityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherDescription',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherDescription',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weatherDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weatherDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weatherDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherGroundLevel',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherGroundLevel',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherGroundLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherGroundLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherGroundLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherGroundLevelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherGroundLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherHumidity',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherHumidity',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherHumidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherHumidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherHumidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherHumidityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherHumidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherIcon',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherIcon',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weatherIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weatherIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weatherIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherMain',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherMain',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherMain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weatherMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weatherMain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherMain',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherMainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weatherMain',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherPressure',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherPressure',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherPressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherPressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherPressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherPressureBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherPressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherSeaLevel',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherSeaLevel',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherSeaLevelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherSeaLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherTempMax',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherTempMax',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherTempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherTempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherTempMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherTempMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherTempMin',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherTempMin',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherTempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherTempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherTempMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTempMinBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherTempMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherTemperature',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherTemperature',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      weatherTemperatureBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherTemperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windDegree',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windDegree',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windDegree',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windDegree',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windDegree',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windDegreeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windDegree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windGust',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windGust',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windGustBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windGust',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterFilterCondition>
      windSpeedBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windSpeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension WeatherEntityQueryObject
    on QueryBuilder<WeatherEntity, WeatherEntity, QFilterCondition> {}

extension WeatherEntityQueryLinks
    on QueryBuilder<WeatherEntity, WeatherEntity, QFilterCondition> {}

extension WeatherEntityQuerySortBy
    on QueryBuilder<WeatherEntity, WeatherEntity, QSortBy> {
  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByAllDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByDtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByLattitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lattitude', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByLattitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lattitude', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByRainHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rainHeight', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByRainHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rainHeight', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortBySunrise() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunrise', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortBySunriseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunrise', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortBySunset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunset', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortBySunsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunset', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByVisibilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherDescription', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherDescription', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherGroundLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherGroundLevel', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherGroundLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherGroundLevel', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherHumidity', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherHumidity', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByWeatherIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherIcon', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherIcon', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByWeatherMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherMain', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherMain', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherPressure', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherPressure', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherSeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherSeaLevel', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherSeaLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherSeaLevel', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMax', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTempMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMax', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMin', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTempMinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMin', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTemperature', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWeatherTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTemperature', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByWindDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windDegree', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWindDegreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windDegree', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByWindGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windGust', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWindGustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windGust', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> sortByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windSpeed', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      sortByWindSpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windSpeed', Sort.desc);
    });
  }
}

extension WeatherEntityQuerySortThenBy
    on QueryBuilder<WeatherEntity, WeatherEntity, QSortThenBy> {
  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByAllDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'all', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByBase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByBaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'base', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cod', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByDtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dt', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByFeelsLikeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feelsLike', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByLattitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lattitude', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByLattitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lattitude', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByRainHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rainHeight', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByRainHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rainHeight', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenBySunrise() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunrise', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenBySunriseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunrise', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenBySunset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunset', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenBySunsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sunset', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByVisibilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visibility', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherDescription', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherDescription', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherGroundLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherGroundLevel', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherGroundLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherGroundLevel', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherHumidity', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherHumidity', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWeatherIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherIcon', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherIcon', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWeatherMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherMain', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherMain', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherPressure', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherPressure', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherSeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherSeaLevel', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherSeaLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherSeaLevel', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMax', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTempMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMax', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMin', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTempMinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTempMin', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTemperature', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWeatherTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherTemperature', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWindDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windDegree', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWindDegreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windDegree', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWindGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windGust', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWindGustDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windGust', Sort.desc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy> thenByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windSpeed', Sort.asc);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QAfterSortBy>
      thenByWindSpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windSpeed', Sort.desc);
    });
  }
}

extension WeatherEntityQueryWhereDistinct
    on QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> {
  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByAll() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'all');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByBase(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'base', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityId');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cod');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByDt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dt');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByFeelsLike() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feelsLike');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByLattitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lattitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByLongitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByRainHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rainHeight');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctBySunrise() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sunrise');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctBySunset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sunset');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibility');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherGroundLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherGroundLevel');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherHumidity');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByWeatherIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherIcon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByWeatherMain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherMain', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherPressure');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherSeaLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherSeaLevel');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherTempMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherTempMax');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherTempMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherTempMin');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct>
      distinctByWeatherTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherTemperature');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByWindDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windDegree');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByWindGust() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windGust');
    });
  }

  QueryBuilder<WeatherEntity, WeatherEntity, QDistinct> distinctByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windSpeed');
    });
  }
}

extension WeatherEntityQueryProperty
    on QueryBuilder<WeatherEntity, WeatherEntity, QQueryProperty> {
  QueryBuilder<WeatherEntity, int, QQueryOperations> weatherIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherId');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> allProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'all');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> baseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'base');
    });
  }

  QueryBuilder<WeatherEntity, int?, QQueryOperations> cityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityId');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> codProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cod');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> dtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dt');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> feelsLikeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feelsLike');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> lattitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lattitude');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> rainHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rainHeight');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> sunriseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sunrise');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> sunsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sunset');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> timezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<WeatherEntity, int?, QQueryOperations> visibilityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibility');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations>
      weatherDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherDescription');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherGroundLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherGroundLevel');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherHumidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherHumidity');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> weatherIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherIcon');
    });
  }

  QueryBuilder<WeatherEntity, String?, QQueryOperations> weatherMainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherMain');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherPressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherPressure');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherSeaLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherSeaLevel');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherTempMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherTempMax');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherTempMinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherTempMin');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations>
      weatherTemperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherTemperature');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> windDegreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windDegree');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> windGustProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windGust');
    });
  }

  QueryBuilder<WeatherEntity, double?, QQueryOperations> windSpeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windSpeed');
    });
  }
}
