// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountModel {
  int get id => throw _privateConstructorUsedError;
  String get appname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  String get algorithm => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {int id,
      String appname,
      String username,
      String secret,
      String issuer,
      String algorithm,
      int digits,
      int period});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appname = null,
    Object? username = null,
    Object? secret = null,
    Object? issuer = null,
    Object? algorithm = null,
    Object? digits = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appname: null == appname
          ? _value.appname
          : appname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$_AccountModelCopyWith(
          _$_AccountModel value, $Res Function(_$_AccountModel) then) =
      __$$_AccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String appname,
      String username,
      String secret,
      String issuer,
      String algorithm,
      int digits,
      int period});
}

/// @nodoc
class __$$_AccountModelCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$_AccountModel>
    implements _$$_AccountModelCopyWith<$Res> {
  __$$_AccountModelCopyWithImpl(
      _$_AccountModel _value, $Res Function(_$_AccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appname = null,
    Object? username = null,
    Object? secret = null,
    Object? issuer = null,
    Object? algorithm = null,
    Object? digits = null,
    Object? period = null,
  }) {
    return _then(_$_AccountModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appname: null == appname
          ? _value.appname
          : appname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AccountModel extends _AccountModel {
  const _$_AccountModel(
      {required this.id,
      required this.appname,
      required this.username,
      required this.secret,
      required this.issuer,
      required this.algorithm,
      required this.digits,
      required this.period})
      : super._();

  @override
  final int id;
  @override
  final String appname;
  @override
  final String username;
  @override
  final String secret;
  @override
  final String issuer;
  @override
  final String algorithm;
  @override
  final int digits;
  @override
  final int period;

  @override
  String toString() {
    return 'AccountModel(id: $id, appname: $appname, username: $username, secret: $secret, issuer: $issuer, algorithm: $algorithm, digits: $digits, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appname, appname) || other.appname == appname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.digits, digits) || other.digits == digits) &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, appname, username, secret,
      issuer, algorithm, digits, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      __$$_AccountModelCopyWithImpl<_$_AccountModel>(this, _$identity);
}

abstract class _AccountModel extends AccountModel {
  const factory _AccountModel(
      {required final int id,
      required final String appname,
      required final String username,
      required final String secret,
      required final String issuer,
      required final String algorithm,
      required final int digits,
      required final int period}) = _$_AccountModel;
  const _AccountModel._() : super._();

  @override
  int get id;
  @override
  String get appname;
  @override
  String get username;
  @override
  String get secret;
  @override
  String get issuer;
  @override
  String get algorithm;
  @override
  int get digits;
  @override
  int get period;
  @override
  @JsonKey(ignore: true)
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
