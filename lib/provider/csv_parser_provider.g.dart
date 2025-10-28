// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csv_parser_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(biomeCsvParser)
const biomeCsvParserProvider = BiomeCsvParserFamily._();

final class BiomeCsvParserProvider
    extends $FunctionalProvider<BiomeCsvParser, BiomeCsvParser, BiomeCsvParser>
    with $Provider<BiomeCsvParser> {
  const BiomeCsvParserProvider._({
    required BiomeCsvParserFamily super.from,
    required BiomeCsvParserCompleter? super.argument,
  }) : super(
         retry: null,
         name: r'biomeCsvParserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$biomeCsvParserHash();

  @override
  String toString() {
    return r'biomeCsvParserProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<BiomeCsvParser> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BiomeCsvParser create(Ref ref) {
    final argument = this.argument as BiomeCsvParserCompleter?;
    return biomeCsvParser(ref, onComplete: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BiomeCsvParser value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BiomeCsvParser>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BiomeCsvParserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$biomeCsvParserHash() => r'9328d3f870b2f8ad24a2fe11dd2766e985e04b86';

final class BiomeCsvParserFamily extends $Family
    with $FunctionalFamilyOverride<BiomeCsvParser, BiomeCsvParserCompleter?> {
  const BiomeCsvParserFamily._()
    : super(
        retry: null,
        name: r'biomeCsvParserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BiomeCsvParserProvider call({BiomeCsvParserCompleter? onComplete}) =>
      BiomeCsvParserProvider._(argument: onComplete, from: this);

  @override
  String toString() => r'biomeCsvParserProvider';
}
