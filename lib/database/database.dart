export 'biomes.dart';

import 'package:drift/drift.dart';

import 'biomes.dart';
part 'database.g.dart';

@DriftDatabase(tables: [Biomes])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;
}

extension AppDataBaseExtensions on AppDatabase {
  Stream<List<Biome>> watchAllBiomes() async* {
    yield* select(biomes).watch();
  }
}
