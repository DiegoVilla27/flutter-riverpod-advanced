import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filter/filter_provider.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/filtered/filtered_provider.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/todo/todo_provider.dart';

/// [ListTodo] displays a filtered list of todo items as switchable tiles.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with [filteredTodosProvider].
/// - Each todo is shown as a [SwitchListTile] with its label and completion status.
/// - Toggling the switch updates the todo's status using [todoProvider].
/// 
/// Usage:
/// Place [ListTodo] in your widget tree to show and manage the filtered todo list.
class ListTodo extends ConsumerWidget {
  const ListTodo({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final todos = ref.watch(filteredTodosProvider);

    return Expanded(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (_, index) {
          final todo = todos[index];

          return SwitchListTile(
            key: ValueKey(todo.id),
            title: Text(todo.label),
            value: todo.status == FilterType.completed,
            onChanged:
                (value) => ref.read(todoProvider.notifier).setStatus(todo.id),
          );
        },
      ),
    );
  }
}
