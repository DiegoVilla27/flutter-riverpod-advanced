import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filter/filter_provider.dart';
import 'package:flutter_riverpod_advanced/helpers/random_generator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

/// [TodoEntity] represents a single todo item.
///
/// - Contains [id], [label], and [status] fields.
/// - The [toggle] method switches the status between pending and completed.
///
/// Usage:
/// Use [TodoEntity] to manage individual todo items.
class TodoEntity {
  String id;
  String label;
  FilterType status;

  TodoEntity({
    required this.id,
    required this.label,
    this.status = FilterType.pending,
  });

  TodoEntity toggle() => TodoEntity(
    id: id,
    label: label,
    status:
        status == FilterType.completed
            ? FilterType.pending
            : FilterType.completed,
  );
}

/// [Todo] is a Riverpod code-generated provider that manages a list of todo items.
///
/// - The initial state is an empty list.
/// - The [addItem] method adds a new todo with a random name.
/// - The [setStatus] method toggles the status of a todo by its [id].
///
/// Usage:
/// Use [todoProvider] to access and manage the todo list in your widgets.
@Riverpod(keepAlive: true)
class Todo extends _$Todo {
  @override
  List<TodoEntity> build() {
    return [];
  }

  void addItem() {
    state = [
      ...state,
      TodoEntity(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        label: RandomGenerator.getRandomName(),
      ),
    ];
  }

  void setStatus(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.toggle() else todo,
    ];
  }
}
