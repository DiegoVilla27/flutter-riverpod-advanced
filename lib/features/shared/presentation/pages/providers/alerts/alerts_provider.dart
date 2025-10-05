import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [AlertsNotifier] manages the alert state as a boolean value.
/// 
/// - The initial value is set to `false`.
/// - Provides a [toggleAlert] method to switch the alert state.
/// 
/// Usage:
/// Use [alertsProvider] to access and modify the alert state in your widgets.
class AlertsNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void toggleAlert() {
    state = !state;
  }
}

final alertsProvider = NotifierProvider<AlertsNotifier, bool>(() {
  return AlertsNotifier();
});
