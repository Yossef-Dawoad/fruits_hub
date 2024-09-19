import 'package:fruits_hub/core/common/services/authentication/authentication_service.dart';
import 'package:fruits_hub/core/common/services/remote_storage/storage_service.dart';
import 'package:fruits_hub/core/common/types/errors.dart';
import 'package:fruits_hub/core/common/types/exceptions.dart';
import 'package:fruits_hub/core/common/types/result.dart';

import '../../domain/repositories/auth_repo.dart';
import '../models/user_account.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationService authService;
  final RemoteNoSqlStorageService remoteLocalService;

  AuthenticationRepositoryImpl(this.authService, this.remoteLocalService);

  @override
  FutureResult<UserAccount> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserAccount.fromFirebaseUser(user));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(AuthenticationFailure(message: 'Something went wrong, please try again later.'));
    }
  }

  @override
  FutureResult<void> signOut() async {
    try {
      await authService.signOut();
      return const Right(null);
    } on Exception {
      return Left(AuthenticationFailure(message: 'Something went wrong, please try again later.'));
    }
  }

  @override
  Future<Result<UserAccount>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final newUser = await authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );

      await remoteLocalService.saveNewRecord(UserAccount.fromFirebaseUser(newUser));

      return Right(UserAccount.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } on RemoteStorgeException catch (e) {
      return Left(RemoteStorageFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    } finally {
      await authService.signOut();
    }
  }

  @override
  Future<Result<UserAccount>> signInWithGoogle() async {
    try {
      final newUser = await authService.signInWithGoogle();
      return Right(UserAccount.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    }
  }

  @override
  Future<Result<UserAccount>> signInWithFacebook() async {
    try {
      final newUser = await authService.signInWithFacebook();
      return Right(UserAccount.fromFirebaseUser(newUser));
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Unknown error'));
    }
  }
}
