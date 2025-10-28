// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actived_where_clause_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActivedBiomesWhereClauses)
const activedBiomesWhereClausesProvider = ActivedBiomesWhereClausesProvider._();

final class ActivedBiomesWhereClausesProvider
    extends
        $NotifierProvider<
          ActivedBiomesWhereClauses,
          List<WhereClause<Biomes>>
        > {
  const ActivedBiomesWhereClausesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activedBiomesWhereClausesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activedBiomesWhereClausesHash();

  @$internal
  @override
  ActivedBiomesWhereClauses create() => ActivedBiomesWhereClauses();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<WhereClause<Biomes>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<WhereClause<Biomes>>>(value),
    );
  }
}

String _$activedBiomesWhereClausesHash() =>
    r'ac3e171551fcee5dfed27b64c163e7a5879a96cb';

abstract class _$ActivedBiomesWhereClauses
    extends $Notifier<List<WhereClause<Biomes>>> {
  List<WhereClause<Biomes>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<List<WhereClause<Biomes>>, List<WhereClause<Biomes>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<WhereClause<Biomes>>, List<WhereClause<Biomes>>>,
              List<WhereClause<Biomes>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(aggregatedBiomesWhereClause)
const aggregatedBiomesWhereClauseProvider =
    AggregatedBiomesWhereClauseProvider._();

final class AggregatedBiomesWhereClauseProvider
    extends
        $FunctionalProvider<
          WhereClause<Biomes>?,
          WhereClause<Biomes>?,
          WhereClause<Biomes>?
        >
    with $Provider<WhereClause<Biomes>?> {
  const AggregatedBiomesWhereClauseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aggregatedBiomesWhereClauseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aggregatedBiomesWhereClauseHash();

  @$internal
  @override
  $ProviderElement<WhereClause<Biomes>?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WhereClause<Biomes>? create(Ref ref) {
    return aggregatedBiomesWhereClause(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WhereClause<Biomes>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WhereClause<Biomes>?>(value),
    );
  }
}

String _$aggregatedBiomesWhereClauseHash() =>
    r'915e3b829f9070a506dfd2f8c4a0ee521644d1c2';
