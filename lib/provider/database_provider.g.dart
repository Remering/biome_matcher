// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_openConnection)
const _openConnectionProvider = _OpenConnectionProvider._();

final class _OpenConnectionProvider
    extends $FunctionalProvider<QueryExecutor, QueryExecutor, QueryExecutor>
    with $Provider<QueryExecutor> {
  const _OpenConnectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_openConnectionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_openConnectionHash();

  @$internal
  @override
  $ProviderElement<QueryExecutor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  QueryExecutor create(Ref ref) {
    return _openConnection(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QueryExecutor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QueryExecutor>(value),
    );
  }
}

String _$_openConnectionHash() => r'935a0c141b5f24978c6a8e9ae0642287110eeb00';

@ProviderFor(appDatabase)
const appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  const AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'c8c11a144f1d413ebf812ba6c1243e9b3834bf5a';
