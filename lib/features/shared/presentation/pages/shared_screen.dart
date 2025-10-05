import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/shared/presentation/pages/providers/alerts/alerts_provider.dart';

/// [SharedScreen] displays and manages the alert state using Riverpod.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [alertsProvider].
/// - Shows a button to toggle the alert state.
/// - Displays a message when the alert is active.
/// 
/// Usage:
/// Place [SharedScreen] in your navigation to provide alert management functionality.
class SharedScreen extends ConsumerWidget {
  const SharedScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final alertProv = ref.watch(alertsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Alert')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ref.read(alertsProvider.notifier).toggleAlert(),
              child: Text('${alertProv ? 'Hide' : 'Show'} Alert'),
            ),
            Text(alertProv ? 'To show alert go to home!' : ''),
          ],
        ),
      ),
    );
  }
}
