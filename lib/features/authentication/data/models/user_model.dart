import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/authentication/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.uId,
  });
  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        name: map['name'] as String,
        email: map['email'] as String,
        uId: map['uId'] as String,
      );

  factory UserModel.fromFirebaseUser(User user) => UserModel(
        name: user.displayName ?? '',
        email: user.email ?? '',
        uId: user.uid,
      );
}
