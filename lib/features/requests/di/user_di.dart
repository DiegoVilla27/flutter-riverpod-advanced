import 'package:flutter_riverpod_advanced/core/di/di.dart';
import 'package:flutter_riverpod_advanced/features/requests/data/data_sources/user_datasource.dart';
import 'package:flutter_riverpod_advanced/features/requests/data/repository/user_repository_impl.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/repository/users_repository.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/use_cases/get_users.dart';

/// Initializes dependency injection for user-related features.
/// 
/// - Registers [UserDataSourceImpl] as a lazy singleton.
/// - Registers [UsersRepository] using [UserRepositoryImpl] as a lazy singleton.
/// - Registers [GetUsersUseCase] as a lazy singleton.
/// 
/// Usage:
/// Call [initUserInjections] during app startup to set up user dependencies.
Future<void> initUserInjections() async {
  di.registerLazySingleton<UserDataSourceImpl>(() => UserDataSourceImpl());
  di.registerLazySingleton<UsersRepository>(
    () => UserRepositoryImpl(userDataSourceImpl: di()),
  );
  di.registerLazySingleton<GetUsersUseCase>(
    () => GetUsersUseCase(repository: di()),
  );
}
