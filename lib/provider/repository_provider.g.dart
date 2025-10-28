// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(biomesRepository)
const biomesRepositoryProvider = BiomesRepositoryProvider._();

final class BiomesRepositoryProvider
    extends
        $FunctionalProvider<
          BiomesRepository,
          BiomesRepository,
          BiomesRepository
        >
    with $Provider<BiomesRepository> {
  const BiomesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'biomesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$biomesRepositoryHash();

  @$internal
  @override
  $ProviderElement<BiomesRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BiomesRepository create(Ref ref) {
    return biomesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BiomesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BiomesRepository>(value),
    );
  }
}

String _$biomesRepositoryHash() => r'c3303cd389ce35ff50e83efbba8aad15f13fbc80';
