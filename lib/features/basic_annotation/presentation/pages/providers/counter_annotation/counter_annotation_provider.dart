import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_annotation_provider.g.dart';

/// [CounterAnnotation] is a Riverpod code-generated provider that manages an integer counter state.
/// 
/// - The initial value is set to 0.
/// - Provides [increment] and [decrement] methods to modify the counter.
/// 
/// Usage:
/// Use [counterAnnotationProvider] to access and modify the counter state in your widgets.
@riverpod
class CounterAnnotation extends _$CounterAnnotation {
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
