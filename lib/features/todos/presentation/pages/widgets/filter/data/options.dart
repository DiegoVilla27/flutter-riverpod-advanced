import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filter/filter_provider.dart';

/// [filterOptions] defines the display labels for each [FilterType] in the todo filter segmented button.
/// 
/// Usage:
/// Use [filterOptions] to show filter names in the UI.
final Map<FilterType, String> filterOptions = {
  FilterType.all: 'All',
  FilterType.completed: 'Completed',
  FilterType.pending: 'Pending',
};
