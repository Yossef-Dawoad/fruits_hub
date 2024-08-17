part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class LoginEmailWithPasswordRequested extends LoginEvent {
  final String email;
  final String password;
  LoginEmailWithPasswordRequested({required this.email, required this.password});
}

final class LoginWithGoogleRequested extends LoginEvent {}

final class LoginWithFacebookRequested extends LoginEvent {}
