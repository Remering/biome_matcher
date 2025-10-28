import 'package:biome_matcher/biome_matcher.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'csv_parser_provider.g.dart';

@riverpod
BiomeCsvParser biomeCsvParser(Ref ref, {BiomeCsvParserCompleter? onComplete}) =>
    BiomeCsvParser(
      appDatabase: ref.watch(appDatabaseProvider),
      onComplete: onComplete,
    );
