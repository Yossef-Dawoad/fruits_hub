import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fruits_hub/core/common/types/result.dart';
import 'package:fruits_hub/features/authentication/data/models/user_account.dart';
import 'package:fruits_hub/features/authentication/domain/repositories/auth_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthenticationRepository authRepo;
  LoginBloc(this.authRepo) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) => emit(LoginLoading()));
    on<LoginEmailWithPasswordRequested>(_onUserLogin);
    on<LoginWithGoogleRequested>(_onUserLoginWithGoogle);
    on<LoginWithFacebookRequested>(_onUserLoginWithFacebook);
  }

  FutureOr<void> _onUserLogin(event, emit) async {
    emit(LoginLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );
    return switch (result) {
      Right(data: final user) => emit(LoginSuccess(user: user!)),
      Left(err: final failure) => emit(LoginFailure(message: failure!.message)),
    };
  }

  FutureOr<void> _onUserLoginWithGoogle(
    LoginWithGoogleRequested event,
    Emitter<LoginState> emit,
  ) async {
    final result = await authRepo.signInWithGoogle();
    return switch (result) {
      Right(data: final user) => emit(LoginSuccess(user: user!)),
      Left(err: final failure) => emit(LoginFailure(message: failure!.message)),
    };
  }

  FutureOr<void> _onUserLoginWithFacebook(
    LoginWithFacebookRequested event,
    Emitter<LoginState> emit,
  ) async {
    final result = await authRepo.signInWithFacebook();
    return switch (result) {
      Right(data: final user) => emit(LoginSuccess(user: user!)),
      Left(err: final failure) => emit(LoginFailure(message: failure!.message)),
    };
  }
}
