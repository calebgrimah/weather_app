// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarouselDataCollection on Isar {
  IsarCollection<CarouselData> get carouselDatas => this.collection();
}

const CarouselDataSchema = CollectionSchema(
  name: r'CarouselData',
  id: 4543148183746912581,
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
  estimateSize: _carouselDataEstimateSize,
  serialize: _carouselDataSerialize,
  deserialize: _carouselDataDeserialize,
  deserializeProp: _carouselDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _carouselDataGetId,
  getLinks: _carouselDataGetLinks,
  attach: _carouselDataAttach,
  version: '3.1.0',
);

int _carouselDataEstimateSize(
  CarouselData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _carouselDataSerialize(
  CarouselData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cityId);
  writer.writeLong(offsets[1], object.weatherId);
}

CarouselData _carouselDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarouselData();
  object.cityId = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.weatherId = reader.readLongOrNull(offsets[1]);
  return object;
}

P _carouselDataDeserializeProp<P>(
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

Id _carouselDataGetId(CarouselData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _carouselDataGetLinks(CarouselData object) {
  return [];
}

void _carouselDataAttach(
    IsarCollection<dynamic> col, Id id, CarouselData object) {
  object.id = id;
}

extension CarouselDataQueryWhereSort
    on QueryBuilder<CarouselData, CarouselData, QWhere> {
  QueryBuilder<CarouselData, CarouselData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarouselDataQueryWhere
    on QueryBuilder<CarouselData, CarouselData, QWhereClause> {
  QueryBuilder<CarouselData, CarouselData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<CarouselData, CarouselData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterWhereClause> idBetween(
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

extension CarouselDataQueryFilter
    on QueryBuilder<CarouselData, CarouselData, QFilterCondition> {
  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      cityIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      cityIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityId',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> cityIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> cityIdBetween(
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      weatherIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      weatherIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherId',
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
      weatherIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
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

  QueryBuilder<CarouselData, CarouselData, QAfterFilterCondition>
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

extension CarouselDataQueryObject
    on QueryBuilder<CarouselData, CarouselData, QFilterCondition> {}

extension CarouselDataQueryLinks
    on QueryBuilder<CarouselData, CarouselData, QFilterCondition> {}

extension CarouselDataQuerySortBy
    on QueryBuilder<CarouselData, CarouselData, QSortBy> {
  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> sortByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> sortByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> sortByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.asc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> sortByWeatherIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.desc);
    });
  }
}

extension CarouselDataQuerySortThenBy
    on QueryBuilder<CarouselData, CarouselData, QSortThenBy> {
  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.asc);
    });
  }

  QueryBuilder<CarouselData, CarouselData, QAfterSortBy> thenByWeatherIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weatherId', Sort.desc);
    });
  }
}

extension CarouselDataQueryWhereDistinct
    on QueryBuilder<CarouselData, CarouselData, QDistinct> {
  QueryBuilder<CarouselData, CarouselData, QDistinct> distinctByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityId');
    });
  }

  QueryBuilder<CarouselData, CarouselData, QDistinct> distinctByWeatherId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weatherId');
    });
  }
}

extension CarouselDataQueryProperty
    on QueryBuilder<CarouselData, CarouselData, QQueryProperty> {
  QueryBuilder<CarouselData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarouselData, int?, QQueryOperations> cityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityId');
    });
  }

  QueryBuilder<CarouselData, int?, QQueryOperations> weatherIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherId');
    });
  }
}
