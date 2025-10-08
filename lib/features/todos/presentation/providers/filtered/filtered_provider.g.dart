// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [filteredTodos] is a Riverpod code-generated provider that returns a filtered list of todo items.
///
/// - Watches [todoProvider] for the list of todos.
/// - Watches [filterProvider] for the current filter type.
/// - Returns all, completed, or pending todos based on the selected filter.
///
/// Usage:
/// Use [filteredTodosProvider] to display a filtered list of todos in your widgets.

@ProviderFor(filteredTodos)
const filteredTodosProvider = FilteredTodosProvider._();

/// [filteredTodos] is a Riverpod code-generated provider that returns a filtered list of todo items.
///
/// - Watches [todoProvider] for the list of todos.
/// - Watches [filterProvider] for the current filter type.
/// - Returns all, completed, or pending todos based on the selected filter.
///
/// Usage:
/// Use [filteredTodosProvider] to display a filtered list of todos in your widgets.

final class FilteredTodosProvider
    extends
        $FunctionalProvider<
          List<TodoEntity>,
          List<TodoEntity>,
          List<TodoEntity>
        >
    with $Provider<List<TodoEntity>> {
  /// [filteredTodos] is a Riverpod code-generated provider that returns a filtered list of todo items.
  ///
  /// - Watches [todoProvider] for the list of todos.
  /// - Watches [filterProvider] for the current filter type.
  /// - Returns all, completed, or pending todos based on the selected filter.
  ///
  /// Usage:
  /// Use [filteredTodosProvider] to display a filtered list of todos in your widgets.
  const FilteredTodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredTodosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredTodosHash();

  @$internal
  @override
  $ProviderElement<List<TodoEntity>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<TodoEntity> create(Ref ref) {
    return filteredTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TodoEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TodoEntity>>(value),
    );
  }
}

String _$filteredTodosHash() => r'26fb7268d335044abdbb7a15b52624ed3ddf38c7';
