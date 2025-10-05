import 'package:dio/dio.dart';
import 'package:flutter_riverpod_advanced/features/requests/data/models/user_model.dart';

/// [UserDataSource] defines the contract for fetching user data.
/// 
/// - The [getUsers] method should be implemented to retrieve a list of [UserModel] objects.
/// 
/// Usage:
/// Implement [UserDataSource] to provide user data from any source (e.g., remote API, local database).
abstract class UserDataSource {
  Future<List<UserModel>> getUsers();
}

/// [UserDataSourceImpl] is an implementation of [UserDataSource] for fetching user data.
/// 
/// - Uses the Dio HTTP client to perform network requests.
/// - The base URL is set to 'https://jsonplaceholder.typicode.com'.
/// - The [getUsers] method fetches a list of users from the API and maps the response to [UserModel] objects.
/// 
/// Usage:
/// Create an instance of [UserDataSourceImpl] to retrieve user data from the remote API.
class UserDataSourceImpl implements UserDataSource {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {'Content-Type': 'application/json'}
    ),
  );

  @override
  Future<List<UserModel>> getUsers() async {
    final res = await dio.get('$baseUrl/users');
    return (res.data as List).map((json) => UserModel.fromJson(json)).toList();
  }
}
