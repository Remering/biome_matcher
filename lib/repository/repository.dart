import 'package:drift/drift.dart';

export 'biomes.dart';

typedef WhereClause<E> = Expression<bool> Function(E e);
