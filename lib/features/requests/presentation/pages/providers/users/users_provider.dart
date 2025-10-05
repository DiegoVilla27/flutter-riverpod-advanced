import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/core/di/di.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/use_cases/get_users.dart';

/// [UsersNotifier] is an [AsyncNotifier] that manages the asynchronous state of user entities.
/// 
/// - Uses [GetUsersUseCase] to fetch user data from the repository.
/// - The [build] method loads users when the provider is initialized.
/// - The [loadUsers] method sets the state to loading, fetches users, and updates the state with the result or error.
/// 
/// Usage:
/// Use [usersProvider] to access and manage the asynchronous user state in your widgets.
class UsersNotifier extends AsyncNotifier {
  @override
  Future<List<UserEntity>> build() async {
    return await loadUsers();
  }

  Future<List<UserEntity>> loadUsers() async {
    state = const AsyncValue.loading();
    final getUsersUseCase = di<GetUsersUseCase>();

    try {
      final users = await getUsersUseCase.repository.getUsers();
      state = AsyncValue.data(users);
      return users;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return [];
    }
  }
}

final usersProvider = AsyncNotifierProvider(() => UsersNotifier());
