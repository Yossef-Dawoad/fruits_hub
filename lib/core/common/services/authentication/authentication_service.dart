abstract interface class AuthenticationService<UserType> {
  Future<UserType> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserType> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserType> signInWithGoogle();
  Future<UserType> signInWithFacebook();
  Future<void> signOut();
  Future<bool> deleteAccount();

  Future<String?> get userTok;
}
