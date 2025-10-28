// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BiomesTable extends Biomes with TableInfo<$BiomesTable, Biome> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BiomesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _temperatureMeta = const VerificationMeta(
    'temperature',
  );
  @override
  late final GeneratedColumn<double> temperature = GeneratedColumn<double>(
    'temperature',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rainfallMeta = const VerificationMeta(
    'rainfall',
  );
  @override
  late final GeneratedColumn<double> rainfall = GeneratedColumn<double>(
    'rainfall',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _spawnChanceMeta = const VerificationMeta(
    'spawnChance',
  );
  @override
  late final GeneratedColumn<double> spawnChance = GeneratedColumn<double>(
    'spawn_chance',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rootHeightMeta = const VerificationMeta(
    'rootHeight',
  );
  @override
  late final GeneratedColumn<double> rootHeight = GeneratedColumn<double>(
    'root_height',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _heightVariationMeta = const VerificationMeta(
    'heightVariation',
  );
  @override
  late final GeneratedColumn<double> heightVariation = GeneratedColumn<double>(
    'height_variation',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typesMeta = const VerificationMeta('types');
  @override
  late final GeneratedColumn<String> types = GeneratedColumn<String>(
    'types',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clazzMeta = const VerificationMeta('clazz');
  @override
  late final GeneratedColumn<String> clazz = GeneratedColumn<String>(
    'clazz',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    temperature,
    rainfall,
    spawnChance,
    rootHeight,
    heightVariation,
    types,
    clazz,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'biomes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Biome> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('temperature')) {
      context.handle(
        _temperatureMeta,
        temperature.isAcceptableOrUnknown(
          data['temperature']!,
          _temperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_temperatureMeta);
    }
    if (data.containsKey('rainfall')) {
      context.handle(
        _rainfallMeta,
        rainfall.isAcceptableOrUnknown(data['rainfall']!, _rainfallMeta),
      );
    } else if (isInserting) {
      context.missing(_rainfallMeta);
    }
    if (data.containsKey('spawn_chance')) {
      context.handle(
        _spawnChanceMeta,
        spawnChance.isAcceptableOrUnknown(
          data['spawn_chance']!,
          _spawnChanceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_spawnChanceMeta);
    }
    if (data.containsKey('root_height')) {
      context.handle(
        _rootHeightMeta,
        rootHeight.isAcceptableOrUnknown(data['root_height']!, _rootHeightMeta),
      );
    } else if (isInserting) {
      context.missing(_rootHeightMeta);
    }
    if (data.containsKey('height_variation')) {
      context.handle(
        _heightVariationMeta,
        heightVariation.isAcceptableOrUnknown(
          data['height_variation']!,
          _heightVariationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_heightVariationMeta);
    }
    if (data.containsKey('types')) {
      context.handle(
        _typesMeta,
        types.isAcceptableOrUnknown(data['types']!, _typesMeta),
      );
    } else if (isInserting) {
      context.missing(_typesMeta);
    }
    if (data.containsKey('clazz')) {
      context.handle(
        _clazzMeta,
        clazz.isAcceptableOrUnknown(data['clazz']!, _clazzMeta),
      );
    } else if (isInserting) {
      context.missing(_clazzMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Biome map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Biome(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      temperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}temperature'],
      )!,
      rainfall: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rainfall'],
      )!,
      spawnChance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}spawn_chance'],
      )!,
      rootHeight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}root_height'],
      )!,
      heightVariation: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height_variation'],
      )!,
      types: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}types'],
      )!,
      clazz: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}clazz'],
      )!,
    );
  }

  @override
  $BiomesTable createAlias(String alias) {
    return $BiomesTable(attachedDatabase, alias);
  }
}

class Biome extends DataClass implements Insertable<Biome> {
  final int id;
  final String name;
  final double temperature;
  final double rainfall;
  final double spawnChance;
  final double rootHeight;
  final double heightVariation;
  final String types;
  final String clazz;
  const Biome({
    required this.id,
    required this.name,
    required this.temperature,
    required this.rainfall,
    required this.spawnChance,
    required this.rootHeight,
    required this.heightVariation,
    required this.types,
    required this.clazz,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['temperature'] = Variable<double>(temperature);
    map['rainfall'] = Variable<double>(rainfall);
    map['spawn_chance'] = Variable<double>(spawnChance);
    map['root_height'] = Variable<double>(rootHeight);
    map['height_variation'] = Variable<double>(heightVariation);
    map['types'] = Variable<String>(types);
    map['clazz'] = Variable<String>(clazz);
    return map;
  }

  BiomesCompanion toCompanion(bool nullToAbsent) {
    return BiomesCompanion(
      id: Value(id),
      name: Value(name),
      temperature: Value(temperature),
      rainfall: Value(rainfall),
      spawnChance: Value(spawnChance),
      rootHeight: Value(rootHeight),
      heightVariation: Value(heightVariation),
      types: Value(types),
      clazz: Value(clazz),
    );
  }

  factory Biome.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Biome(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      temperature: serializer.fromJson<double>(json['temperature']),
      rainfall: serializer.fromJson<double>(json['rainfall']),
      spawnChance: serializer.fromJson<double>(json['spawnChance']),
      rootHeight: serializer.fromJson<double>(json['rootHeight']),
      heightVariation: serializer.fromJson<double>(json['heightVariation']),
      types: serializer.fromJson<String>(json['types']),
      clazz: serializer.fromJson<String>(json['clazz']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'temperature': serializer.toJson<double>(temperature),
      'rainfall': serializer.toJson<double>(rainfall),
      'spawnChance': serializer.toJson<double>(spawnChance),
      'rootHeight': serializer.toJson<double>(rootHeight),
      'heightVariation': serializer.toJson<double>(heightVariation),
      'types': serializer.toJson<String>(types),
      'clazz': serializer.toJson<String>(clazz),
    };
  }

  Biome copyWith({
    int? id,
    String? name,
    double? temperature,
    double? rainfall,
    double? spawnChance,
    double? rootHeight,
    double? heightVariation,
    String? types,
    String? clazz,
  }) => Biome(
    id: id ?? this.id,
    name: name ?? this.name,
    temperature: temperature ?? this.temperature,
    rainfall: rainfall ?? this.rainfall,
    spawnChance: spawnChance ?? this.spawnChance,
    rootHeight: rootHeight ?? this.rootHeight,
    heightVariation: heightVariation ?? this.heightVariation,
    types: types ?? this.types,
    clazz: clazz ?? this.clazz,
  );
  Biome copyWithCompanion(BiomesCompanion data) {
    return Biome(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      temperature: data.temperature.present
          ? data.temperature.value
          : this.temperature,
      rainfall: data.rainfall.present ? data.rainfall.value : this.rainfall,
      spawnChance: data.spawnChance.present
          ? data.spawnChance.value
          : this.spawnChance,
      rootHeight: data.rootHeight.present
          ? data.rootHeight.value
          : this.rootHeight,
      heightVariation: data.heightVariation.present
          ? data.heightVariation.value
          : this.heightVariation,
      types: data.types.present ? data.types.value : this.types,
      clazz: data.clazz.present ? data.clazz.value : this.clazz,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Biome(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('temperature: $temperature, ')
          ..write('rainfall: $rainfall, ')
          ..write('spawnChance: $spawnChance, ')
          ..write('rootHeight: $rootHeight, ')
          ..write('heightVariation: $heightVariation, ')
          ..write('types: $types, ')
          ..write('clazz: $clazz')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    temperature,
    rainfall,
    spawnChance,
    rootHeight,
    heightVariation,
    types,
    clazz,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Biome &&
          other.id == this.id &&
          other.name == this.name &&
          other.temperature == this.temperature &&
          other.rainfall == this.rainfall &&
          other.spawnChance == this.spawnChance &&
          other.rootHeight == this.rootHeight &&
          other.heightVariation == this.heightVariation &&
          other.types == this.types &&
          other.clazz == this.clazz);
}

class BiomesCompanion extends UpdateCompanion<Biome> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> temperature;
  final Value<double> rainfall;
  final Value<double> spawnChance;
  final Value<double> rootHeight;
  final Value<double> heightVariation;
  final Value<String> types;
  final Value<String> clazz;
  const BiomesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.temperature = const Value.absent(),
    this.rainfall = const Value.absent(),
    this.spawnChance = const Value.absent(),
    this.rootHeight = const Value.absent(),
    this.heightVariation = const Value.absent(),
    this.types = const Value.absent(),
    this.clazz = const Value.absent(),
  });
  BiomesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double temperature,
    required double rainfall,
    required double spawnChance,
    required double rootHeight,
    required double heightVariation,
    required String types,
    required String clazz,
  }) : name = Value(name),
       temperature = Value(temperature),
       rainfall = Value(rainfall),
       spawnChance = Value(spawnChance),
       rootHeight = Value(rootHeight),
       heightVariation = Value(heightVariation),
       types = Value(types),
       clazz = Value(clazz);
  static Insertable<Biome> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? temperature,
    Expression<double>? rainfall,
    Expression<double>? spawnChance,
    Expression<double>? rootHeight,
    Expression<double>? heightVariation,
    Expression<String>? types,
    Expression<String>? clazz,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (temperature != null) 'temperature': temperature,
      if (rainfall != null) 'rainfall': rainfall,
      if (spawnChance != null) 'spawn_chance': spawnChance,
      if (rootHeight != null) 'root_height': rootHeight,
      if (heightVariation != null) 'height_variation': heightVariation,
      if (types != null) 'types': types,
      if (clazz != null) 'clazz': clazz,
    });
  }

  BiomesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<double>? temperature,
    Value<double>? rainfall,
    Value<double>? spawnChance,
    Value<double>? rootHeight,
    Value<double>? heightVariation,
    Value<String>? types,
    Value<String>? clazz,
  }) {
    return BiomesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      temperature: temperature ?? this.temperature,
      rainfall: rainfall ?? this.rainfall,
      spawnChance: spawnChance ?? this.spawnChance,
      rootHeight: rootHeight ?? this.rootHeight,
      heightVariation: heightVariation ?? this.heightVariation,
      types: types ?? this.types,
      clazz: clazz ?? this.clazz,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (temperature.present) {
      map['temperature'] = Variable<double>(temperature.value);
    }
    if (rainfall.present) {
      map['rainfall'] = Variable<double>(rainfall.value);
    }
    if (spawnChance.present) {
      map['spawn_chance'] = Variable<double>(spawnChance.value);
    }
    if (rootHeight.present) {
      map['root_height'] = Variable<double>(rootHeight.value);
    }
    if (heightVariation.present) {
      map['height_variation'] = Variable<double>(heightVariation.value);
    }
    if (types.present) {
      map['types'] = Variable<String>(types.value);
    }
    if (clazz.present) {
      map['clazz'] = Variable<String>(clazz.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BiomesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('temperature: $temperature, ')
          ..write('rainfall: $rainfall, ')
          ..write('spawnChance: $spawnChance, ')
          ..write('rootHeight: $rootHeight, ')
          ..write('heightVariation: $heightVariation, ')
          ..write('types: $types, ')
          ..write('clazz: $clazz')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BiomesTable biomes = $BiomesTable(this);
  late final Index temperatureRainfall = Index(
    'temperature_rainfall',
    'CREATE INDEX temperature_rainfall ON biomes (temperature, rainfall)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    biomes,
    temperatureRainfall,
  ];
}

typedef $$BiomesTableCreateCompanionBuilder =
    BiomesCompanion Function({
      Value<int> id,
      required String name,
      required double temperature,
      required double rainfall,
      required double spawnChance,
      required double rootHeight,
      required double heightVariation,
      required String types,
      required String clazz,
    });
typedef $$BiomesTableUpdateCompanionBuilder =
    BiomesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<double> temperature,
      Value<double> rainfall,
      Value<double> spawnChance,
      Value<double> rootHeight,
      Value<double> heightVariation,
      Value<String> types,
      Value<String> clazz,
    });

class $$BiomesTableFilterComposer
    extends Composer<_$AppDatabase, $BiomesTable> {
  $$BiomesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rainfall => $composableBuilder(
    column: $table.rainfall,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get spawnChance => $composableBuilder(
    column: $table.spawnChance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rootHeight => $composableBuilder(
    column: $table.rootHeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get heightVariation => $composableBuilder(
    column: $table.heightVariation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get types => $composableBuilder(
    column: $table.types,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get clazz => $composableBuilder(
    column: $table.clazz,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BiomesTableOrderingComposer
    extends Composer<_$AppDatabase, $BiomesTable> {
  $$BiomesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rainfall => $composableBuilder(
    column: $table.rainfall,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get spawnChance => $composableBuilder(
    column: $table.spawnChance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rootHeight => $composableBuilder(
    column: $table.rootHeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get heightVariation => $composableBuilder(
    column: $table.heightVariation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get types => $composableBuilder(
    column: $table.types,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get clazz => $composableBuilder(
    column: $table.clazz,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BiomesTableAnnotationComposer
    extends Composer<_$AppDatabase, $BiomesTable> {
  $$BiomesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rainfall =>
      $composableBuilder(column: $table.rainfall, builder: (column) => column);

  GeneratedColumn<double> get spawnChance => $composableBuilder(
    column: $table.spawnChance,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rootHeight => $composableBuilder(
    column: $table.rootHeight,
    builder: (column) => column,
  );

  GeneratedColumn<double> get heightVariation => $composableBuilder(
    column: $table.heightVariation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get types =>
      $composableBuilder(column: $table.types, builder: (column) => column);

  GeneratedColumn<String> get clazz =>
      $composableBuilder(column: $table.clazz, builder: (column) => column);
}

class $$BiomesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BiomesTable,
          Biome,
          $$BiomesTableFilterComposer,
          $$BiomesTableOrderingComposer,
          $$BiomesTableAnnotationComposer,
          $$BiomesTableCreateCompanionBuilder,
          $$BiomesTableUpdateCompanionBuilder,
          (Biome, BaseReferences<_$AppDatabase, $BiomesTable, Biome>),
          Biome,
          PrefetchHooks Function()
        > {
  $$BiomesTableTableManager(_$AppDatabase db, $BiomesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BiomesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BiomesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BiomesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> temperature = const Value.absent(),
                Value<double> rainfall = const Value.absent(),
                Value<double> spawnChance = const Value.absent(),
                Value<double> rootHeight = const Value.absent(),
                Value<double> heightVariation = const Value.absent(),
                Value<String> types = const Value.absent(),
                Value<String> clazz = const Value.absent(),
              }) => BiomesCompanion(
                id: id,
                name: name,
                temperature: temperature,
                rainfall: rainfall,
                spawnChance: spawnChance,
                rootHeight: rootHeight,
                heightVariation: heightVariation,
                types: types,
                clazz: clazz,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required double temperature,
                required double rainfall,
                required double spawnChance,
                required double rootHeight,
                required double heightVariation,
                required String types,
                required String clazz,
              }) => BiomesCompanion.insert(
                id: id,
                name: name,
                temperature: temperature,
                rainfall: rainfall,
                spawnChance: spawnChance,
                rootHeight: rootHeight,
                heightVariation: heightVariation,
                types: types,
                clazz: clazz,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BiomesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BiomesTable,
      Biome,
      $$BiomesTableFilterComposer,
      $$BiomesTableOrderingComposer,
      $$BiomesTableAnnotationComposer,
      $$BiomesTableCreateCompanionBuilder,
      $$BiomesTableUpdateCompanionBuilder,
      (Biome, BaseReferences<_$AppDatabase, $BiomesTable, Biome>),
      Biome,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BiomesTableTableManager get biomes =>
      $$BiomesTableTableManager(_db, _db.biomes);
}
