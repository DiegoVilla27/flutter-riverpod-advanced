// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_annotation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// [Users] is a Riverpod code-generated provider that manages the asynchronous state of user entities.
///
/// - Uses [GetUsersUseCase] to fetch user data from the repository.
/// - The [build] method loads users when the provider is initialized.
/// - The [loadUsers] method sets the state to loading, fetches users, and updates the state with the result or error.
///
/// use @Riverpod(keepAlive: true) instead @riverpod to persist data
///
/// Usage:
/// Use [usersProvider] to access and manage the asynchronous user state in your widgets.

@ProviderFor(Users)
const usersProvider = UsersProvider._();

/// [Users] is a Riverpod code-generated provider that manages the asynchronous state of user entities.
///
/// - Uses [GetUsersUseCase] to fetch user data from the repository.
/// - The [build] method loads users when the provider is initialized.
/// - The [loadUsers] method sets the state to loading, fetches users, and updates the state with the result or error.
///
/// use @Riverpod(keepAlive: true) instead @riverpod to persist data
///
/// Usage:
/// Use [usersProvider] to access and manage the asynchronous user state in your widgets.
final class UsersProvider
    extends $AsyncNotifierProvider<Users, List<UserEntity>> {
  /// [Users] is a Riverpod code-generated provider that manages the asynchronous state of user entities.
  ///
  /// - Uses [GetUsersUseCase] to fetch user data from the repository.
  /// - The [build] method loads users when the provider is initialized.
  /// - The [loadUsers] method sets the state to loading, fetches users, and updates the state with the result or error.
  ///
  /// use @Riverpod(keepAlive: true) instead @riverpod to persist data
  ///
  /// Usage:
  /// Use [usersProvider] to access and manage the asynchronous user state in your widgets.
  const UsersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usersHash();

  @$internal
  @override
  Users create() => Users();
}

String _$usersHash() => r'd057de20d8db7feecf8400b340dbe3a19120cf30';

/// [Users] is a Riverpod code-generated provider that manages the asynchronous state of user entities.
///
/// - Uses [GetUsersUseCase] to fetch user data from the repository.
/// - The [build] method loads users when the provider is initialized.
/// - The [loadUsers] method sets the state to loading, fetches users, and updates the state with the result or error.
///
/// use @Riverpod(keepAlive: true) instead @riverpod to persist data
///
/// Usage:
/// Use [usersProvider] to access and manage the asynchronous user state in your widgets.

abstract class _$Users extends $AsyncNotifier<List<UserEntity>> {
  FutureOr<List<UserEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<UserEntity>>, List<UserEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserEntity>>, List<UserEntity>>,
              AsyncValue<List<UserEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
