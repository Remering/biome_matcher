import 'package:biome_matcher/biome_matcher.dart';
import 'package:biome_matcher/widget/biomes_chip_wrap_widget.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const BiomeMatcher()));
}

class BiomeMatcher extends ConsumerWidget {
  const BiomeMatcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 16.0),

            BiomesChipWrapWidget(
              // 标签已包含温度计 Emoji
              label: const Text(
                '🌡️温度',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              chipLabels: {
                const Text('严寒 🥶'): (biomes) => biomes.temperature.equals(0),

                const Text('寒冷 ❄️'): (biomes) =>
                    biomes.temperature.isBetweenValues(0.1, 0.35),

                const Text('一般 🌤️'): (biomes) =>
                    biomes.temperature.isBetweenValues(0.36, 0.85),

                const Text('温暖 ☀️'): (biomes) =>
                    biomes.temperature.isBetweenValues(0.86, 1),

                const Text('炙热 🔥'): (biomes) =>
                    biomes.temperature.isBetweenValues(1.01, 2.00),
              },
            ),
            SizedBox(height: 8.0),
            BiomesChipWrapWidget(
              label: const Text(
                '💧湿度',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              chipLabels: {
                const Text('干旱 🌵'): (biomes) =>
                    biomes.rainfall.isBetweenValues(0, 0.29),

                const Text('普通 🌱'): (biomes) =>
                    biomes.rainfall.isBetweenValues(0.30, 0.85),

                const Text('潮湿 🌧️'): (biomes) =>
                    biomes.rainfall.isBetweenValues(0.86, 1),
              },
            ),
            SizedBox(height: 16.0),
            Expanded(child: BiomeTableWidget()),
          ],
        ),
        floatingActionButton: BiomesDataImportWidget(),
      ),
    );
  }
}
