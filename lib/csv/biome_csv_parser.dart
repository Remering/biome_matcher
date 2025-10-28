import 'dart:async';

import 'package:biome_matcher/database/database.dart';
import 'package:drift/drift.dart';
import 'package:fast_csv/csv_parser.dart';

typedef BiomeCsvParserCompleter = Future<void> Function(BiomeCsvParser parser);

class BiomeCsvParser extends CsvParser {
  final AppDatabase appDatabase;

  final BiomeCsvParserCompleter? onComplete;

  int _count = 0;

  int _totalCount = 0;

  int get totalCount => _totalCount;

  int _transactionCount = 0;

  int get transactionCount => _transactionCount;

  final List<List<String>> _rows = [];

  BiomeCsvParser({required this.appDatabase, this.onComplete});

  @override
  void beginEvent(CsvParserEvent event) {
    if (event == CsvParserEvent.startEvent) {
      _count = 0;
      _totalCount = 0;
      _transactionCount = 0;
      _rows.clear();
    }
  }

  @override
  R? endEvent<R>(CsvParserEvent event, R? result, bool ok) {
    void saveRows(bool isLast) {
      _saveToDatabase(_rows, isLast);
      _rows.clear();
    }

    if (ok) {
      switch (event) {
        case CsvParserEvent.rowEvent:
          final row = result as List<String>;
          _rows.add(row);
          if (_rows.length > 10000) {
            saveRows(false);
          }
          break;
        case CsvParserEvent.startEvent:
          saveRows(true);
          break;
        default:
      }
    }

    return result;
  }

  void _saveToDatabase(List<List<String>> rows, bool isLast) async {
    _transactionCount++;
    _count += rows.length;
    _totalCount += rows.length;

    if (_count > 100000 || isLast) {
      final batchFuture = appDatabase.batch((batch) {
        batch.insertAll(
          appDatabase.biomes,
          rows
              .map((list) {
                // ... (解析和 BiomesCompanion 转换逻辑) ...
                int? id = int.tryParse(list.elementAtOrNull(0) ?? '');
                String? name = list.elementAtOrNull(1);
                double? temperature = double.tryParse(
                  list.elementAtOrNull(2) ?? '',
                );
                double? rainfall = double.tryParse(
                  list.elementAtOrNull(3) ?? '',
                );
                double? spawnChance = double.tryParse(
                  list.elementAtOrNull(4) ?? '',
                );
                double? rootHeight = double.tryParse(
                  list.elementAtOrNull(5) ?? '',
                );
                double? heightVariation = double.tryParse(
                  list.elementAtOrNull(6) ?? '',
                );
                String? types = list.elementAtOrNull(7);
                String? clazz = list.elementAtOrNull(8);
                if (id == null ||
                    name == null ||
                    temperature == null ||
                    rainfall == null ||
                    spawnChance == null ||
                    rootHeight == null ||
                    heightVariation == null ||
                    types == null ||
                    clazz == null) {
                  return null;
                }
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
              })
              .where((item) => item != null)
              .cast(),
        );
      });

      // 2. 定义完成回调 Future，确保它返回 Future<void>
      Future<void> completionFuture = isLast && onComplete != null
          ? Future.sync(() => onComplete!.call(this))
          : Future.value();

      // 3. 等待两个明确的 Future<void> 完成
      await Future.wait<void>([batchFuture, completionFuture]);
      _count = 0;
    }
  }
}
