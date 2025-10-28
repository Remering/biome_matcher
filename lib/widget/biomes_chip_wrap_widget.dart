import 'package:biome_matcher/biome_matcher.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BiomeChipConfig {
  final String label;
  final String emoji;
  final WhereClause<Biomes> whereClause;

  const BiomeChipConfig({
    required this.label,
    required this.emoji,
    required this.whereClause,
  });

  // 用于构造 FilterChip 的 Label
  Widget get chipLabelWidget => Text('$label $emoji');
}

class _BiomesChipWrapWidget extends StatefulWidget {
  final Widget label;
  final Map<Widget, WhereClause<Biomes>> chipLabels;
  final void Function(WhereClause<Biomes>? previous, WhereClause<Biomes>? next)?
  activedWhereClauseChanged;

  const _BiomesChipWrapWidget({
    required this.label,
    required this.chipLabels,
    this.activedWhereClauseChanged,
  });

  @override
  State<_BiomesChipWrapWidget> createState() => _BiomesChipWrapWidgetState();
}

class _BiomesChipWrapWidgetState extends State<_BiomesChipWrapWidget> {
  WhereClause<Biomes>? _activedWhere;

  WhereClause<Biomes>? get activedWhere => _activedWhere;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      children: [
        widget.label,
        ...widget.chipLabels.entries.map(
          (entry) => BiomeFilterChipWidget(
            whereClause: entry.value,
            label: entry.key,
            selected: _activedWhere == entry.value,
            onSelected: (value) {
              setState(() {
                WhereClause<Biomes>? previous = _activedWhere;
                _activedWhere = value ? entry.value : null;
                widget.activedWhereClauseChanged?.call(previous, _activedWhere);
              });
            },
          ),
        ),
      ],
    );
  }
}

class BiomesChipWrapWidget extends ConsumerWidget {
  final Widget label;
  final Map<Widget, WhereClause<Biomes>> chipLabels;

  const BiomesChipWrapWidget({
    super.key,
    required this.label,
    required this.chipLabels,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activedBiomeWhereClausesNotifier = ref.read(
      activedBiomesWhereClausesProvider.notifier,
    );

    return _BiomesChipWrapWidget(
      label: label,
      chipLabels: chipLabels,
      activedWhereClauseChanged: (previous, current) {
        if (current == null && previous != null) {
          activedBiomeWhereClausesNotifier.removeWhereClause(previous);
        } else {
          activedBiomeWhereClausesNotifier.addWhereClause(current!);
        }
      },
    );
  }
}
