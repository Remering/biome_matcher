import 'package:biome_matcher/biome_matcher.dart';
import 'package:drift/drift.dart';

part 'biomes.g.dart';

@DriftAccessor(tables: [Biomes])
class BiomesRepository extends DatabaseAccessor<AppDatabase>
    with _$BiomesRepositoryMixin {
  BiomesRepository(super.attachedDatabase);

  /// 分页查询 Biomes 表数据
  Stream<List<Biome>> biomesPage({
    WhereClause<Biomes>? where,
    Expression<Biomes>? orderBy,
    OrderingMode order = OrderingMode.asc, // 排序方向
    int? limit,
    int offset = 0,
  }) async* {
    final query = select(biomes);

    if (where != null) {
      query.where(where);
    }

    // 添加排序逻辑
    if (orderBy != null) {
      query.orderBy([(t) => OrderingTerm(expression: orderBy, mode: order)]);
    }

    yield* query.watch();
  }

  /// 获取 Biomes 总数
  Stream<int> countAllBiomes({Expression<bool>? where}) async* {
    final countExp = countAll();
    final query = selectOnly(biomes)..addColumns([countExp]);
    if (where != null) {
      query.where(where);
    }
    yield* query
        .map((row) => row.read(countExp))
        .watchSingle()
        .map((it) => it ?? 0);
  }
}
