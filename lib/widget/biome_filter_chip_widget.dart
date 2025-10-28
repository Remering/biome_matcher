import 'package:biome_matcher/biome_matcher.dart';
import 'package:flutter/material.dart';

class BiomeFilterChipWidget extends StatelessWidget {
  final WhereClause<Biomes> whereClause;
  final Widget label;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  const BiomeFilterChipWidget({
    super.key,
    required this.whereClause,
    required this.label,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(label: label, selected: selected, onSelected: onSelected);
  }
}
