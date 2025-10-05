import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/basic_annotation/presentation/pages/widgets/actions/actions_widget.dart';
import 'package:flutter_riverpod_advanced/features/basic_annotation/presentation/pages/widgets/counter/counter_widget.dart';
import 'package:flutter_riverpod_advanced/features/basic_annotation/presentation/pages/providers/counter_annotation/counter_annotation_provider.dart';

/// [BasicAnnotationScreen] displays and manages a counter using a Riverpod code-generated provider.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [counterAnnotationProvider].
/// - Shows the current counter value using [CounterWidget].
/// - Provides increment and decrement actions via [ActionsWidget].
/// 
/// Usage:
/// Place [BasicAnnotationScreen] in your navigation to provide a simple counter interface using code generation.
class BasicAnnotationScreen extends ConsumerWidget {
  const BasicAnnotationScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final counterProv = ref.watch(counterAnnotationProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
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
