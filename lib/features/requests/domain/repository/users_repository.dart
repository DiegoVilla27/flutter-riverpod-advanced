import 'package:flutter_riverpod_advanced/features/requests/domain/entities/user_entity.dart';

/// [UsersRepository] defines the contract for managing user data in the domain layer.
/// 
/// - The [getUsers] method should be implemented to retrieve a list of [UserEntity] objects.
/// 
/// Usage:
/// Implement [UsersRepository] to provide domain-level access to user data.
abstract class UsersRepository {
  Future<List<UserEntity>> getUsers();
}