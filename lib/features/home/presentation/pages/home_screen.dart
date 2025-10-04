import 'package:flutter/material.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/widgets/list/list_widget.dart';

/// [HomeScreen] is the main screen of the application.
/// 
/// - Displays the [ListWidget] containing navigation options.
/// 
/// Usage:
/// Set [HomeScreen] as the entry point in your navigation to show the app menu.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(_) {
    return Scaffold(body: const ListWidget());
  }
}
