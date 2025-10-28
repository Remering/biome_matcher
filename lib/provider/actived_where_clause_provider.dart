import 'package:biome_matcher/biome_matcher.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'actived_where_clause_provider.g.dart';

@riverpod
class ActivedBiomesWhereClauses extends _$ActivedBiomesWhereClauses {
  @override
  List<WhereClause<Biomes>> build() {
    return [];
  }

  void addWhereClause(WhereClause<Biomes> whereClause) {
    state = [...state, whereClause];
  }

  // 让我们允许删除待办清单
  void removeWhereClause(WhereClause<Biomes> whereClause) {
    state = state.where((where) => where != whereClause).toList();
  }
}

@riverpod
WhereClause<Biomes>? aggregatedBiomesWhereClause(Ref ref) {
  List<WhereClause<Biomes>> actived = ref.watch(
    activedBiomesWhereClausesProvider,
  );
  return actived.fold<WhereClause<Biomes>?>(null, (
    WhereClause<Biomes>? current,
    WhereClause<Biomes> next,
  ) {
    return current == null
        ? next
        : (biome) => current.call(biome) & next.call(biome);
  });
}
