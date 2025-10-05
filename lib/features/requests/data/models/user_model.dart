/// [UserModel] represents the data structure for a user received from an external source (e.g., API).
/// 
/// - Contains [id], [name], and [email] fields.
/// - Provides a [fromJson] factory constructor to create a [UserModel] from a JSON map.
/// 
/// Usage:
/// Use [UserModel] to parse and manage user data from APIs or other sources.
class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({required this.id, required this.name, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}
