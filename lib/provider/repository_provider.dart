import 'package:biome_matcher/biome_matcher.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_provider.g.dart';

@riverpod
BiomesRepository biomesRepository(Ref ref) =>
    BiomesRepository(ref.read(appDatabaseProvider));

final watchAllBiomeStreamProvider = StreamProvider.autoDispose(
  (ref) {
    return ref
        .read(biomesRepositoryProvider)
        .biomesPage(where: ref.watch(aggregatedBiomesWhereClauseProvider));
  },
  // retry: (retryCount, error) {
  //   print('$retryCount $error');
  // },
);
