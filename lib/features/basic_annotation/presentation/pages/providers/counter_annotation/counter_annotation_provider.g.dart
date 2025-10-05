// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_annotation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [CounterAnnotation] is a Riverpod code-generated provider that manages an integer counter state.
///
/// - The initial value is set to 0.
/// - Provides [increment] and [decrement] methods to modify the counter.
///
/// Usage:
/// Use [counterAnnotationProvider] to access and modify the counter state in your widgets.

@ProviderFor(CounterAnnotation)
const counterAnnotationProvider = CounterAnnotationProvider._();

/// [CounterAnnotation] is a Riverpod code-generated provider that manages an integer counter state.
///
/// - The initial value is set to 0.
/// - Provides [increment] and [decrement] methods to modify the counter.
///
/// Usage:
/// Use [counterAnnotationProvider] to access and modify the counter state in your widgets.
final class CounterAnnotationProvider
    extends $NotifierProvider<CounterAnnotation, int> {
  /// [CounterAnnotation] is a Riverpod code-generated provider that manages an integer counter state.
  ///
  /// - The initial value is set to 0.
  /// - Provides [increment] and [decrement] methods to modify the counter.
  ///
  /// Usage:
  /// Use [counterAnnotationProvider] to access and modify the counter state in your widgets.
  const CounterAnnotationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterAnnotationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterAnnotationHash();

  @$internal
  @override
  CounterAnnotation create() => CounterAnnotation();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$counterAnnotationHash() => r'1b3b724e9a64d1c3c5a7a31bdd7c9009a26f6fac';

/// [CounterAnnotation] is a Riverpod code-generated provider that manages an integer counter state.
///
/// - The initial value is set to 0.
/// - Provides [increment] and [decrement] methods to modify the counter.
///
/// Usage:
/// Use [counterAnnotationProvider] to access and modify the counter state in your widgets.

abstract class _$CounterAnnotation extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
