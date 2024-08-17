import 'package:fruits_hub/core/common/types/result.dart';

import '../entities/user_entity.dart';

abstract interface class AuthenticationRepository {
  Future<Result<UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Result<UserEntity>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Result<UserEntity>> signInWithGoogle();
  Future<Result<UserEntity>> signInWithFacebook();
  Future<Result<void>> signOut();
}
