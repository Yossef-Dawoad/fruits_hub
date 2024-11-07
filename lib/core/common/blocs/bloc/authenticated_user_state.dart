part of 'authenticated_user_bloc.dart';

@immutable
sealed class AuthenticatedUserState {}

final class AuthenticatedUserInitial extends AuthenticatedUserState {}

final class AuthenticatedUserIsTrue extends AuthenticatedUserState {
  final String user;

  AuthenticatedUserIsTrue({required this.user});
}

final class AuthenticatedUserIsFalse extends AuthenticatedUserState {}

final class AuthenticatedUserFailure extends AuthenticatedUserState {
  final String msg;

  AuthenticatedUserFailure({required this.msg});
}
