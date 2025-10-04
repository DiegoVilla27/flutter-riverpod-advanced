import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A [CounterNotifier] that manages an integer counter state.
/// 
/// - The initial value is set to 0.
/// - Provides methods to increment and decrement the counter.
/// 
/// Usage:
/// Use [counterProvider] to access and modify the counter state in your widgets.
class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final counterProvider = NotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});
