// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [Todo] is a Riverpod code-generated provider that manages a list of todo items.
///
/// - The initial state is an empty list.
/// - The [addItem] method adds a new todo with a random name.
/// - The [setStatus] method toggles the status of a todo by its [id].
///
/// Usage:
/// Use [todoProvider] to access and manage the todo list in your widgets.

@ProviderFor(Todo)
const todoProvider = TodoProvider._();

/// [Todo] is a Riverpod code-generated provider that manages a list of todo items.
///
/// - The initial state is an empty list.
/// - The [addItem] method adds a new todo with a random name.
/// - The [setStatus] method toggles the status of a todo by its [id].
///
/// Usage:
/// Use [todoProvider] to access and manage the todo list in your widgets.
final class TodoProvider extends $NotifierProvider<Todo, List<TodoEntity>> {
  /// [Todo] is a Riverpod code-generated provider that manages a list of todo items.
  ///
  /// - The initial state is an empty list.
  /// - The [addItem] method adds a new todo with a random name.
  /// - The [setStatus] method toggles the status of a todo by its [id].
  ///
  /// Usage:
  /// Use [todoProvider] to access and manage the todo list in your widgets.
  const TodoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoHash();

  @$internal
  @override
  Todo create() => Todo();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TodoEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TodoEntity>>(value),
    );
  }
}

String _$todoHash() => r'9600def17afd216f61afc22ec6b52cab2dbbd40d';

/// [Todo] is a Riverpod code-generated provider that manages a list of todo items.
///
/// - The initial state is an empty list.
/// - The [addItem] method adds a new todo with a random name.
/// - The [setStatus] method toggles the status of a todo by its [id].
///
/// Usage:
/// Use [todoProvider] to access and manage the todo list in your widgets.

abstract class _$Todo extends $Notifier<List<TodoEntity>> {
  List<TodoEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<TodoEntity>, List<TodoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TodoEntity>, List<TodoEntity>>,
              List<TodoEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
