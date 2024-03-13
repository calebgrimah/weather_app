// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarouselEntityDataCollection on Isar {
  IsarCollection<CarouselEntityData> get carouselEntityDatas =>
      this.collection();
}

const CarouselEntityDataSchema = CollectionSchema(
  name: r'CarouselEntityData',
  id: 409653089338073936,
  properties: {
    r'cityId': PropertySchema(
      id: 0,
      name: r'cityId',
      type: IsarType.long,
    ),
    r'weatherId': PropertySchema(
      id: 1,
      name: r'weatherId',
      type: IsarType.long,
    )
  },
  estimateSize: _carouselEntityDataEstimateSize,
  serialize: _carouselEntityDataSerialize,
  deserialize: _carouselEntityDataDeserialize,
  deserializeProp: _carouselEntityDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _carouselEntityDataGetId,
  getLinks: _carouselEntityDataGetLinks,
  attach: _carouselEntityDataAttach,
  version: '3.1.0',
);

int _carouselEntityDataEstimateSize(
  CarouselEntityData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _carouselEntityDataSerialize(
  CarouselEntityData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cityId);
  writer.writeLong(offsets[1], object.weatherId);
}

CarouselEntityData _carouselEntityDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarouselEntityData();
  object.cityId = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.weatherId = reader.readLongOrNull(offsets[1]);
  return object;
}

P _carouselEntityDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _carouselEntityDataGetId(CarouselEntityData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _carouselEntityDataGetLinks(
    CarouselEntityData object) {
  return [];
}

void _carouselEntityDataAttach(
    IsarCollection<dynamic> col, Id id, CarouselEntityData object) {
  object.id = id;
}

extension CarouselEntityDataQueryWhereSort
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QWhere> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarouselEntityDataQueryWhere
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QWhereClause> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CarouselEntityDataQueryFilter
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QFilterCondition> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      cityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      cityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      cityIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
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

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
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

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
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

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdGreaterThan(
    int? value, {
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

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdLessThan(
    int? value, {
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

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterFilterCondition>
      weatherIdBetween(
    int? lower,
    int? upper, {
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
}

extension CarouselEntityDataQueryObject
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QFilterCondition> {}

extension CarouselEntityDataQueryLinks
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QFilterCondition> {}

extension CarouselEntityDataQuerySortBy
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QSortBy> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      sortByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      sortByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      sortByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.asc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      sortByWeatherIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.desc);
    });
  }
}

extension CarouselEntityDataQuerySortThenBy
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QSortThenBy> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.asc);
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QAfterSortBy>
      thenByWeatherIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.desc);
    });
  }
}

extension CarouselEntityDataQueryWhereDistinct
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QDistinct> {
  QueryBuilder<CarouselEntityData, CarouselEntityData, QDistinct>
      distinctByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityId');
    });
  }

  QueryBuilder<CarouselEntityData, CarouselEntityData, QDistinct>
      distinctByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherId');
    });
  }
}

extension CarouselEntityDataQueryProperty
    on QueryBuilder<CarouselEntityData, CarouselEntityData, QQueryProperty> {
  QueryBuilder<CarouselEntityData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarouselEntityData, int?, QQueryOperations> cityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityId');
    });
  }

  QueryBuilder<CarouselEntityData, int?, QQueryOperations> weatherIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherId');
    });
  }
}
