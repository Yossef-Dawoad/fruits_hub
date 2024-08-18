import 'package:fruits_hub/core/common/types/result.dart';
import 'package:fruits_hub/features/authentication/data/models/user_account.dart';

abstract interface class AuthenticationRepository<UserType extends UserAccount> {
  Future<Result<UserType>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Result<UserType>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Result<UserType>> signInWithGoogle();
  Future<Result<UserType>> signInWithFacebook();
  Future<Result<void>> signOut();
}
