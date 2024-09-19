import 'package:fruits_hub/core/common/services/authentication/authentication_service.dart';
import 'package:fruits_hub/core/common/types/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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
      throw _handelFirebaseAuthException(e, 'signUpWithEmailAndPassword');
    } catch (err) {
      _logger.severe('Error in signUpWithEmailAndPassword', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  @override
  Future<User> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final credential = await authInstanace.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      throw _handelFirebaseAuthException(e, 'signInWithEmailAndPassword');
    } catch (err) {
      _logger.severe('Error in signInWithEmailAndPassword', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await authInstanace.signOut();
    } on Exception catch (err) {
      _logger.severe('Error in signOut', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  @override
  Future<User> signInWithFacebook() async {
    try {
      final facebookAuth = FacebookAuth.instance;
      // Trigger the sign-in flow
      final LoginResult loginResult = await facebookAuth.login();
      if (loginResult.status != LoginStatus.success) {
        throw AuthException(message: 'Login wih facebook failed, ${loginResult.status}');
      }
      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
      // Once signed in, return the UserCredential
      final userCredential = await authInstanace.signInWithCredential(facebookAuthCredential);
      if (userCredential.user == null) {
        _logger.severe('Error in signInWithFacebook', 'User returned is null');
        throw AuthException(message: 'Something went wrong, please try again later.');
      }
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      throw _handelFirebaseAuthException(e, 'signInWithFacebook');
    } catch (err) {
      _logger.severe('Error in signInWithFacebook', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  @override
  Future<User> signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final credentialResult = await authInstanace.signInWithCredential(credential);

      if (credentialResult.user == null) {
        _logger.severe('Error in signInWithGoogle', 'User retruned is null');
        throw AuthException(message: 'Something went wrong, please try again later.');
      }

      return credentialResult.user!;
    } on FirebaseAuthException catch (e) {
      throw _handelFirebaseAuthException(e, 'signInWithGoogle');
    } catch (err) {
      _logger.severe('Error in signInWithGoogle', err);
      throw AuthException(message: 'Something went wrong, please try again later.');
    }
  }

  AuthException _handelFirebaseAuthException(FirebaseAuthException e, String methodName) {
    return switch (e.code) {
      'weak-password' => AuthException(message: 'The password provided is too weak.'),
      'email-already-in-use' => AuthException(message: 'The account already exists.'),
      'invalid-email' => AuthException(message: 'The email address is badly formatted or Invaild.'),
      'user-not-found' => AuthException(message: 'No user found for that email.'),
      'wrong-password' => AuthException(message: 'Wrong password provided for that user.'),
      'network-request-failed' => AuthException(message: 'Please check your internet connection.'),
      _ => _logUnkownError('An error occurred. Please try again later.', e, methodName)
    };
  }

  AuthException _logUnkownError(String details, dynamic err, [String? methodName]) {
    _logger.severe('Error in method ${methodName ??= 'Unknown'} related to AuthService: ', err);
    return AuthException(message: details);
  }
}
