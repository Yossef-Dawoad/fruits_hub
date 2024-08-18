import 'package:dart_mappable/dart_mappable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'user_account.mapper.dart';

@MappableClass()
class UserAccount with UserAccountMappable {
  final String name;
  final String email;
  final String uId;

  const UserAccount(
    this.uId,
    this.name,
    this.email,
  );

  // optional: links deserialization factories from the generated [PersonMapper] class
  static const fromMap = UserAccountMapper.fromMap;
  static const fromJson = UserAccountMapper.fromJson;

  factory UserAccount.fromFirebaseUser(User user) =>
      UserAccount(user.uid, user.displayName ?? '', user.email ?? '');

  @override
  String toString() => 'UserAccount(name: $name)';
}
