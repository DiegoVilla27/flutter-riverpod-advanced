import 'package:flutter/material.dart';

/// [CounterWidget] displays the current counter value in a large font.
/// 
/// - Accepts a [value] parameter to show the counter.
/// - Uses a font size of 80.0 for emphasis.
/// 
/// Usage:
/// Place [CounterWidget] in your widget tree and provide the counter value to display.
class CounterWidget extends StatelessWidget {
  final String value;

  const CounterWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(value, style: const TextStyle(fontSize: 80.0));
  }
}
