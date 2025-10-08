import 'package:flutter_riverpod_advanced/features/requests/di/user_di.dart';
import 'package:get_it/get_it.dart';

/// Initializes the application's dependency injection container using GetIt.
///
/// - The [di] variable is the global instance of GetIt.
/// - The [initDI] function registers all feature dependencies.
/// - Currently, it initializes user-related injections via [initUserInjections].
///
/// Usage:
/// Call [initDI] at app startup to set up all dependencies.
final di = GetIt.instance;

Future<void> initDI() async {
  // Features
  await initUserInjections();
}
