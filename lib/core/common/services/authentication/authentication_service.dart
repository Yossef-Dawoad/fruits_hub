abstract interface class AuthenticationService<UserType> {
  Future<UserType> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserType> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
