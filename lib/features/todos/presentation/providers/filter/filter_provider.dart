import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_provider.g.dart';

/// [FilterType] defines the available filter options for todos.
/// 
/// - `all`: Shows all todos.
/// - `completed`: Shows only completed todos.
/// - `pending`: Shows only pending todos.
enum FilterType { all, completed, pending }

/// [Filter] is a Riverpod code-generated provider that manages the current filter type for todos.
/// 
/// - The initial value is set to [FilterType.all].
/// - Provides [setFilterType] to update the filter type.
/// 
/// Usage:
/// Use [filterProvider] to access and modify the todo filter in your widgets.
@Riverpod(keepAlive: true)
class Filter extends _$Filter {
  @override
  FilterType build() {
    return FilterType.all;
  }

  void setFilterType(FilterType type) {
    state = type;
  }
}
