import 'package:flutter_riverpod_advanced/features/requests/data/models/user_model.dart';
import 'package:flutter_riverpod_advanced/features/requests/domain/entities/user_entity.dart';

/// [UserMapper] provides a method to convert a [UserModel] into a [UserEntity].
/// 
/// - The [fromModel] method maps the fields from [UserModel] to [UserEntity].
/// 
/// Usage:
/// Use [UserMapper.fromModel] to transform data models into domain entities.
class UserMapper {
  static UserEntity fromModel(UserModel model) {
    return UserEntity(id: model.id, name: model.name, email: model.email);
  }
}
