// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [Filter] is a Riverpod code-generated provider that manages the current filter type for todos.
///
/// - The initial value is set to [FilterType.all].
/// - Provides [setFilterType] to update the filter type.
///
/// Usage:
/// Use [filterProvider] to access and modify the todo filter in your widgets.

@ProviderFor(Filter)
const filterProvider = FilterProvider._();

/// [Filter] is a Riverpod code-generated provider that manages the current filter type for todos.
///
/// - The initial value is set to [FilterType.all].
/// - Provides [setFilterType] to update the filter type.
///
/// Usage:
/// Use [filterProvider] to access and modify the todo filter in your widgets.
final class FilterProvider extends $NotifierProvider<Filter, FilterType> {
  /// [Filter] is a Riverpod code-generated provider that manages the current filter type for todos.
  ///
  /// - The initial value is set to [FilterType.all].
  /// - Provides [setFilterType] to update the filter type.
  ///
  /// Usage:
  /// Use [filterProvider] to access and modify the todo filter in your widgets.
  const FilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterHash();

  @$internal
  @override
  Filter create() => Filter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterType>(value),
    );
  }
}

String _$filterHash() => r'783ce8caa652339bdaadd086f7f2f2899e51ffeb';

/// [Filter] is a Riverpod code-generated provider that manages the current filter type for todos.
///
/// - The initial value is set to [FilterType.all].
/// - Provides [setFilterType] to update the filter type.
///
/// Usage:
/// Use [filterProvider] to access and modify the todo filter in your widgets.

abstract class _$Filter extends $Notifier<FilterType> {
  FilterType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FilterType, FilterType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FilterType, FilterType>,
              FilterType,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
