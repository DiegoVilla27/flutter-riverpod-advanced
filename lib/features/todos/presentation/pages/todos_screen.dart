import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/pages/widgets/filter/filter_widget.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/pages/widgets/list/list_widget.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/providers/todo/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [FilterTodo(), ListTodo()]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(todoProvider.notifier).addItem(),
        mini: true,
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
