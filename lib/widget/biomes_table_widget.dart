import 'package:biome_matcher/biome_matcher.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BiomeTableWidget extends ConsumerWidget {
  const BiomeTableWidget({super.key});

  // DataColumn _createDataColumn(WidgetRef ref, String label, String columnName) {
  //   final state = ref.watch(biomeTableNotifierProvider);
  //   final notifier = ref.read(biomeTableNotifierProvider.notifier);

  //   // Determine sort indicator
  //   final isSorted = state.sortByColumn == columnName;
  //   final sortOrder = isSorted ? (state.ascending ? true : false) : null;

  //   return DataColumn(
  //     label: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
  //     numeric:
  //         columnName != 'name' &&
  //         columnName != 'types' &&
  //         columnName != 'clazz',
  //     onSort: (columnIndex, ascending) {
  //       notifier.sort(columnName);
  //     },
  //     // Flutter DataTable use sortColumnIndex/sortAscending to control indicator
  //     // We handle the sort logic in Notifier, but need to set the parameters for indicator.
  //   );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchBiomeStream = ref.watch(watchAllBiomeStreamProvider);

    return watchBiomeStream.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (List<Biome> data) => data.isEmpty
          ? const Center(child: Text('没有数据'))
          : SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    child: DataTable(
                      // 表格的列头 (Column Headers)
                      columns: const <DataColumn>[
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('名称')),
                        DataColumn(label: Text('温度')),
                        DataColumn(label: Text('降雨量')),
                        DataColumn(label: Text('生成率')),
                        DataColumn(label: Text('根高')),
                        DataColumn(label: Text('高度变异')),
                        DataColumn(label: Text('类型')),
                        DataColumn(label: Text('类')),
                      ],
                      // 表格的行 (Table Rows)
                      rows: data.map((biome) {
                        return DataRow(
                          cells: <DataCell>[
                            DataCell(Text(biome.id.toString())),
                            DataCell(Text(biome.name)),
                            // RealColumn 使用 toStringAsFixed(1) 来保持格式整洁
                            DataCell(
                              Text(biome.temperature.toStringAsFixed(1)),
                            ),
                            DataCell(Text(biome.rainfall.toStringAsFixed(1))),
                            DataCell(
                              Text(biome.spawnChance.toStringAsFixed(2)),
                            ),
                            DataCell(Text(biome.rootHeight.toStringAsFixed(2))),
                            DataCell(
                              Text(biome.heightVariation.toStringAsFixed(2)),
                            ),
                            DataCell(Text(biome.types)),
                            DataCell(Text(biome.clazz)),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
      error: (Object error, StackTrace stackTrace) {
        return Center(
          child: Column(
            children: [
              Text(
                '加载数据错误: $error\n$stackTrace',
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        );
      },
    );
  }
}
