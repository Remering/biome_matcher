import 'package:biome_matcher/biome_matcher.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
QueryExecutor _openConnection(Ref ref) {
  final database = driftDatabase(
    name: 'biome',
    web: DriftWebOptions(
      sqlite3Wasm: Uri.parse('sqlite3.wasm'),
      driftWorker: Uri.parse('drift_worker.dart.js'),
    ),
    native: DriftNativeOptions(
      databaseDirectory: getApplicationDocumentsDirectory,
    ),
  );

  ref.onDispose(database.close);

  return database;
}

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) =>
    AppDatabase(ref.read(_openConnectionProvider));
