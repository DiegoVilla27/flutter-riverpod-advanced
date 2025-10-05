import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/widgets/list/list_widget.dart';
import 'package:flutter_riverpod_advanced/features/shared/presentation/pages/providers/alerts/alerts_provider.dart';

/// [HomeScreen] is the main screen of the application.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [alertsProvider].
/// - Displays a notification icon that changes color based on the alert state.
/// - Shows the [ListWidget] containing navigation options.
/// 
/// Usage:
/// Set [HomeScreen] as the entry point in your navigation to show the app menu.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final alertProv = ref.watch(alertsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: alertProv ? Colors.redAccent : Colors.white70,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const ListWidget(),
    );
  }
}
