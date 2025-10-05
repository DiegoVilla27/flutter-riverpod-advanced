/// [UserEntity] represents the domain entity for a user.
/// 
/// - Contains [id], [name], and [email] fields.
/// 
/// Usage:
/// Use [UserEntity] to manage user data within the domain layer.
class UserEntity {
  final String id;
  final String name;
  final String email;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
  });
}