part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

final class SignupUserCreatedWithEmailAndPassword extends SignupEvent {
  final String name;
  final String email;
  final String password;

  SignupUserCreatedWithEmailAndPassword(
    this.name,
    this.email,
    this.password,
  );
}
