import 'package:flutter_riverpod_advanced/features/requests/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/repository/users_repository.dart';

/// [GetUsersUseCase] provides a use case for retrieving user entities from the repository.
/// 
/// - Uses [UsersRepository] to fetch a list of [UserEntity] objects.
/// - The [call] method executes the retrieval operation.
/// 
/// Usage:
/// Create an instance of [GetUsersUseCase] and call it to obtain user data.
class GetUsersUseCase {
  final UsersRepository repository;

  GetUsersUseCase({required this.repository});

  Future<List<UserEntity>> call() {
    return repository.getUsers();
  }
}