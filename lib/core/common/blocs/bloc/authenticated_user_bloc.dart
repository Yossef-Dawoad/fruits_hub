import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/authentication/domain/repositories/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../types/result.dart';

part 'authenticated_user_event.dart';
part 'authenticated_user_state.dart';

class AuthenticatedUserBloc extends Bloc<AuthenticatedUserEvent, AuthenticatedUserState> {
  final AuthenticationRepository _authRepo;

  AuthenticatedUserBloc(
    AuthenticationRepository authenticationRepo,
  )   : _authRepo = authenticationRepo,
        super(AuthenticatedUserInitial()) {
    on<CheckCurrentUserEvent>(_onGetCurrentUser);
  }

  FutureOr<void> _onGetCurrentUser(event, Emitter emit) async {
    final result = await _authRepo.userTok;

    return switch (result) {
      Right(data: final userTok) => userTok != null
          ? emit(AuthenticatedUserIsTrue(user: userTok))
          : emit(AuthenticatedUserIsFalse()),
      Left(err: final e) => emit(AuthenticatedUserFailure(msg: e?.message ?? '')),
    };
  }
}
