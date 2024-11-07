class AuthException implements Exception {
  final String message;

  AuthException({required this.message});

  @override
  String toString() => 'AuthException: $message';
}

class RemoteStorgeException implements Exception {
  final String message;

  RemoteStorgeException({required this.message});

  @override
  String toString() => 'RemoteStorgeException: $message';
}
