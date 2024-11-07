// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_account.dart';

class UserAccountMapper extends ClassMapperBase<UserAccount> {
  UserAccountMapper._();

  static UserAccountMapper? _instance;
  static UserAccountMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAccountMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserAccount';

  static String _$uId(UserAccount v) => v.uId;
  static const Field<UserAccount, String> _f$uId = Field('uId', _$uId);
  static String _$name(UserAccount v) => v.name;
  static const Field<UserAccount, String> _f$name = Field('name', _$name);
  static String _$email(UserAccount v) => v.email;
  static const Field<UserAccount, String> _f$email = Field('email', _$email);

  @override
  final MappableFields<UserAccount> fields = const {
    #uId: _f$uId,
    #name: _f$name,
    #email: _f$email,
  };

  static UserAccount _instantiate(DecodingData data) {
    return UserAccount(data.dec(_f$uId), data.dec(_f$name), data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static UserAccount fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAccount>(map);
  }

  static UserAccount fromJson(String json) {
    return ensureInitialized().decodeJson<UserAccount>(json);
  }
}

mixin UserAccountMappable {
  String toJson() {
    return UserAccountMapper.ensureInitialized()
        .encodeJson<UserAccount>(this as UserAccount);
  }

  Map<String, dynamic> toMap() {
    return UserAccountMapper.ensureInitialized()
        .encodeMap<UserAccount>(this as UserAccount);
  }

  UserAccountCopyWith<UserAccount, UserAccount, UserAccount> get copyWith =>
      _UserAccountCopyWithImpl(this as UserAccount, $identity, $identity);
  @override
  String toString() {
    return UserAccountMapper.ensureInitialized()
        .stringifyValue(this as UserAccount);
  }

  @override
  bool operator ==(Object other) {
    return UserAccountMapper.ensureInitialized()
        .equalsValue(this as UserAccount, other);
  }

  @override
  int get hashCode {
    return UserAccountMapper.ensureInitialized().hashValue(this as UserAccount);
  }
}

extension UserAccountValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserAccount, $Out> {
  UserAccountCopyWith<$R, UserAccount, $Out> get $asUserAccount =>
      $base.as((v, t, t2) => _UserAccountCopyWithImpl(v, t, t2));
}

abstract class UserAccountCopyWith<$R, $In extends UserAccount, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uId, String? name, String? email});
  UserAccountCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserAccountCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAccount, $Out>
    implements UserAccountCopyWith<$R, UserAccount, $Out> {
  _UserAccountCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAccount> $mapper =
      UserAccountMapper.ensureInitialized();
  @override
  $R call({String? uId, String? name, String? email}) =>
      $apply(FieldCopyWithData({
        if (uId != null) #uId: uId,
        if (name != null) #name: name,
        if (email != null) #email: email
      }));
  @override
  UserAccount $make(CopyWithData data) => UserAccount(
      data.get(#uId, or: $value.uId),
      data.get(#name, or: $value.name),
      data.get(#email, or: $value.email));

  @override
  UserAccountCopyWith<$R2, UserAccount, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserAccountCopyWithImpl($value, $cast, t);
}
