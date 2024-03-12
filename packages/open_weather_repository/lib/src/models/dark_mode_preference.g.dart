// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_mode_preference.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEnumCollectionCollection on Isar {
  IsarCollection<EnumCollection> get enumCollections => this.collection();
}

const EnumCollectionSchema = CollectionSchema(
  name: r'EnumCollection',
  id: 7965525232112736050,
  properties: {
    r'darkModePreference': PropertySchema(
      id: 0,
      name: r'darkModePreference',
      type: IsarType.string,
      enumMap: _EnumCollectiondarkModePreferenceEnumValueMap,
    )
  },
  estimateSize: _enumCollectionEstimateSize,
  serialize: _enumCollectionSerialize,
  deserialize: _enumCollectionDeserialize,
  deserializeProp: _enumCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _enumCollectionGetId,
  getLinks: _enumCollectionGetLinks,
  attach: _enumCollectionAttach,
  version: '3.1.0',
);

int _enumCollectionEstimateSize(
  EnumCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.darkModePreference;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  return bytesCount;
}

void _enumCollectionSerialize(
  EnumCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.darkModePreference?.name);
}

EnumCollection _enumCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EnumCollection();
  object.darkModePreference = _EnumCollectiondarkModePreferenceValueEnumMap[
      reader.readStringOrNull(offsets[0])];
  object.id = id;
  return object;
}

P _enumCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_EnumCollectiondarkModePreferenceValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EnumCollectiondarkModePreferenceEnumValueMap = {
  r'alwaysDark': r'alwaysDark',
  r'alwaysLight': r'alwaysLight',
  r'accordingToSystemPreferences': r'accordingToSystemPreferences',
};
const _EnumCollectiondarkModePreferenceValueEnumMap = {
  r'alwaysDark': DarkModePreference.alwaysDark,
  r'alwaysLight': DarkModePreference.alwaysLight,
  r'accordingToSystemPreferences':
      DarkModePreference.accordingToSystemPreferences,
};

Id _enumCollectionGetId(EnumCollection object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _enumCollectionGetLinks(EnumCollection object) {
  return [];
}

void _enumCollectionAttach(
    IsarCollection<dynamic> col, Id id, EnumCollection object) {
  object.id = id;
}

extension EnumCollectionQueryWhereSort
    on QueryBuilder<EnumCollection, EnumCollection, QWhere> {
  QueryBuilder<EnumCollection, EnumCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EnumCollectionQueryWhere
    on QueryBuilder<EnumCollection, EnumCollection, QWhereClause> {
  QueryBuilder<EnumCollection, EnumCollection, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<EnumCollection, EnumCollection, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterWhereClause> idBetween(
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

extension EnumCollectionQueryFilter
    on QueryBuilder<EnumCollection, EnumCollection, QFilterCondition> {
  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'darkModePreference',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'darkModePreference',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceEqualTo(
    DarkModePreference? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceGreaterThan(
    DarkModePreference? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceLessThan(
    DarkModePreference? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceBetween(
    DarkModePreference? lower,
    DarkModePreference? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'darkModePreference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'darkModePreference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'darkModePreference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'darkModePreference',
        value: '',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      darkModePreferenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'darkModePreference',
        value: '',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
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

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition>
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

  QueryBuilder<EnumCollection, EnumCollection, QAfterFilterCondition> idBetween(
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
}

extension EnumCollectionQueryObject
    on QueryBuilder<EnumCollection, EnumCollection, QFilterCondition> {}

extension EnumCollectionQueryLinks
    on QueryBuilder<EnumCollection, EnumCollection, QFilterCondition> {}

extension EnumCollectionQuerySortBy
    on QueryBuilder<EnumCollection, EnumCollection, QSortBy> {
  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy>
      sortByDarkModePreference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModePreference', Sort.asc);
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy>
      sortByDarkModePreferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModePreference', Sort.desc);
    });
  }
}

extension EnumCollectionQuerySortThenBy
    on QueryBuilder<EnumCollection, EnumCollection, QSortThenBy> {
  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy>
      thenByDarkModePreference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModePreference', Sort.asc);
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy>
      thenByDarkModePreferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkModePreference', Sort.desc);
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EnumCollection, EnumCollection, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension EnumCollectionQueryWhereDistinct
    on QueryBuilder<EnumCollection, EnumCollection, QDistinct> {
  QueryBuilder<EnumCollection, EnumCollection, QDistinct>
      distinctByDarkModePreference({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'darkModePreference',
          caseSensitive: caseSensitive);
    });
  }
}

extension EnumCollectionQueryProperty
    on QueryBuilder<EnumCollection, EnumCollection, QQueryProperty> {
  QueryBuilder<EnumCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EnumCollection, DarkModePreference?, QQueryOperations>
      darkModePreferenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'darkModePreference');
    });
  }
}
