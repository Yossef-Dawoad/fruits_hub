import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/common/types/result.dart';
import 'package:fruits_hub/features/authentication/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/authentication/domain/repositories/auth_repo.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthenticationRepository authRepo;
  SignupBloc(this.authRepo) : super(SignupInitial()) {
    on<SignupEvent>((event, emit) => emit(SignupLoading()));
    on<SignupEmailWithPasswordEvent>(_onEmailAndPasswordCreated);
  }

  FutureOr<void> _onEmailAndPasswordCreated(
    SignupEmailWithPasswordEvent event,
    Emitter<SignupState> emit,
  ) async {
    final result = await authRepo.signUpWithEmailAndPassword(
      name: event.name,
      email: event.email,
      password: event.password,
    );
    return switch (result) {
      Right(data: final user) => emit(SignupSuccess(user!)),
      Left(err: final failure) => emit(SignupFailure(failure!.message)),
    };
  }
}
