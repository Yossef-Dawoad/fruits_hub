import 'package:fruits_hub/core/common/services/authentication/authentication_service.dart';
import 'package:fruits_hub/core/common/types/errors.dart';
import 'package:fruits_hub/core/common/types/exceptions.dart';
import 'package:fruits_hub/core/common/types/result.dart';

import 'package:fruits_hub/features/authentication/domain/entities/user_entity.dart';

import '../../domain/repositories/auth_repo.dart';
import '../models/user_model.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationService authService;

  AuthenticationRepositoryImpl(this.authService);

  @override
  Future<Result<UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(AuthenticationFailure(message: 'Something went wrong, please try again later.'));
    }
  }

  @override
  Future<Result<void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Result<UserEntity>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final newUser = await authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    }
  }

  @override
  Future<Result<UserEntity>> signInWithGoogle() async {
    try {
      final newUser = await authService.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    }
  }

  @override
  Future<Result<UserEntity>> signInWithFacebook() async {
    try {
      final newUser = await authService.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    }
  }
}
