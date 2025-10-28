import 'package:drift/drift.dart';

@TableIndex(name: 'temperature_rainfall', columns: {#temperature, #rainfall})
class Biomes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 255)();
  RealColumn get temperature => real()();
  RealColumn get rainfall => real()();
  RealColumn get spawnChance => real()();
  RealColumn get rootHeight => real()();
  RealColumn get heightVariation => real()();
  TextColumn get types => text().withLength(max: 255)();
  TextColumn get clazz => text().withLength(max: 255)();
}
