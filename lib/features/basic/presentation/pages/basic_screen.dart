import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/providers/counter/counter_provider.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/widgets/actions/actions_widget.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/widgets/counter/counter_widget.dart';

/// [BasicScreen] is a screen that displays and manages a counter using Riverpod.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [counterProvider].
/// - Shows the current counter value using [CounterWidget].
/// - Provides increment and decrement actions via [ActionsWidget].
/// 
/// Usage:
/// Place [BasicScreen] in your navigation to provide a simple counter interface.
class BasicScreen extends ConsumerWidget {
  const BasicScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final counterProv = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          spacing: 10.0,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CounterWidget(value: counterProv.toString()),
            ActionsWidget(),
          ],
        ),
      ),
    );
  }
}
