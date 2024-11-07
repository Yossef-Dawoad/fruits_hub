part of 'authenticated_user_bloc.dart';

@immutable
sealed class AuthenticatedUserEvent {}

final class CheckCurrentUserEvent extends AuthenticatedUserEvent {}
