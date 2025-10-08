import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filter/filter_provider.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/todo/todo_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filtered_provider.g.dart';

/// [filteredTodos] is a Riverpod code-generated provider that returns a filtered list of todo items.
/// 
/// - Watches [todoProvider] for the list of todos.
/// - Watches [filterProvider] for the current filter type.
/// - Returns all, completed, or pending todos based on the selected filter.
/// 
/// Usage:
/// Use [filteredTodosProvider] to display a filtered list of todos in your widgets.
@riverpod
List<TodoEntity> filteredTodos(Ref ref) {
  final todos = ref.watch(todoProvider);
  final filter = ref.watch(filterProvider);

  switch (filter) {
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos
          .where((todo) => todo.status == FilterType.completed)
          .toList();
    case FilterType.pending:
      return todos.where((todo) => todo.status == FilterType.pending).toList();
  }
} 