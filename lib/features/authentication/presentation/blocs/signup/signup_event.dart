part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

final class SignupEmailWithPasswordEvent extends SignupEvent {
  final String name;
  final String email;
  final String password;

  SignupEmailWithPasswordEvent(
    this.name,
    this.email,
    this.password,
  );
}
