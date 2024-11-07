part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserAccount user;
  SignupSuccess(this.user);
}

final class SignupFailure extends SignupState {
  final String message;
  SignupFailure(this.message);
}
