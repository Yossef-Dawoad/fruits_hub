abstract class Failure {
  final String message;

  Failure({required this.message});
}

final class ServerFailure extends Failure {
  ServerFailure({required super.message});
}

final class AuthenticationFailure extends Failure {
  AuthenticationFailure({required super.message});
}

final class RemoteStorageFailure extends Failure {
  RemoteStorageFailure({required super.message});
}
