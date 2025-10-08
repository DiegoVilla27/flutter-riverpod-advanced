import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/pages/widgets/filter/data/options.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filter/filter_provider.dart';

/// [FilterTodo] displays a segmented button to filter the todo list by status.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with [filterProvider].
/// - Shows filter options using a segmented button.
/// - Updates the filter type when a segment is selected.
/// 
/// Usage:
/// Place [FilterTodo] in your widget tree to allow users to filter todos by status.
class FilterTodo extends ConsumerWidget {
  const FilterTodo({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final filters = ref.watch(filterProvider);

    return SizedBox(
      width: double.infinity,
      child: SegmentedButton(
        segments:
            filterOptions.entries.map((item) {
              return ButtonSegment<FilterType>(
                value: item.key,
                icon: Text(item.value, style: TextStyle(fontSize: 12.0)),
              );
            }).toList(),
        selected: <FilterType>{filters},
        onSelectionChanged: (type) {
          if (type.isNotEmpty) {
            ref.read(filterProvider.notifier).setFilterType(type.first);
          }
        },
      ),
    );
  }
}
