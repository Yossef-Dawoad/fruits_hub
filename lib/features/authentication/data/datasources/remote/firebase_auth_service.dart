import 'package:fruits_hub/core/common/services/authentication/authentication_service.dart';
import 'package:fruits_hub/core/common/types/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logging/logging.dart';

class FirebaseAuthService implements AuthenticationService<User> {
  final authInstanace = FirebaseAuth.instance;

  final Logger _logger = Logger('FirebaseAuthService');

  @override
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await authInstanace.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw AuthException(message: 'The password provided is too weak.');
        case 'email-already-in-use':
          throw AuthException(message: 'The account already exists for that email.');
        case 'invalid-email':
          throw AuthException(message: 'The email address is badly formatted or Invaild.');
        case 'network-request-failed':
          throw AuthException(message: 'Please check your internet connection.');
        default:
          _logger.severe(
              'Error in signUpWithEmailAndPassword\nrelated with FirebaseAuthException', e);
          throw AuthException(message: 'An error occurred. Please try again later.');
      }
    } catch (err) {
      _logger.severe('Error in signUpWithEmailAndPassword', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  @override
  Future<User> signInWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
