import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/providers/counter/counter_provider.dart';

/// [ActionsWidget] displays two buttons to increment and decrement the counter state.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [counterProvider].
/// - The minus button calls the `decrement` method.
/// - The plus button calls the `increment` method.
/// 
/// Usage:
/// Place [ActionsWidget] in your widget tree to provide counter actions.
class ActionsWidget extends ConsumerWidget {
  const ActionsWidget({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.0,
      children: [
        ButtonWidget(
          icon: Icons.remove,
          action: () => ref.read(counterProvider.notifier).decrement(),
        ),
        ButtonWidget(
          icon: Icons.add,
          action: () => ref.read(counterProvider.notifier).increment(),
        ),
      ],
    );
  }
}

/// [ButtonWidget] is a reusable circular button widget.
/// 
/// - Displays an icon in the center.
/// - Executes the provided action when pressed.
/// - Uses a black background and white foreground for styling.
/// 
/// Usage:
/// Use [ButtonWidget] to create icon-based action buttons in your UI.
class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback action;

  const ButtonWidget({super.key, required this.icon, required this.action});

  @override
  Widget build(_) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20.0),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      onPressed: action,
      child: Icon(icon),
    );
  }
}
