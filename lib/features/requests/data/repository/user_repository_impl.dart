import 'package:flutter_riverpod_advanced/features/requests/data/data_sources/user_datasource.dart';
import 'package:flutter_riverpod_advanced/features/requests/data/mappers/user_mapper.dart';
import 'package:flutter_riverpod_advanced/features/requests/data/models/user_model.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/repository/users_repository.dart';

/// [UserRepositoryImpl] is an implementation of [UsersRepository] for managing user data.
/// 
/// - Uses [UserDataSourceImpl] to fetch user data from a remote source.
/// - The [getUsers] method retrieves a list of [UserModel]s and maps them to [UserEntity]s using [UserMapper].
/// 
/// Usage:
/// Create an instance of [UserRepositoryImpl] and use [getUsers] to obtain domain user entities.
class UserRepositoryImpl implements UsersRepository {
  final UserDataSourceImpl userDataSourceImpl;

  UserRepositoryImpl({required this.userDataSourceImpl});

  @override
  Future<List<UserEntity>> getUsers() async {
    final List<UserModel> users = await userDataSourceImpl.getUsers();

    return users.map((user) => UserMapper.fromModel(user)).toList();
  }
}
