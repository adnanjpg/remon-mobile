// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceModelsCollection {
  int get id => throw _privateConstructorUsedError;
  List<DeviceModel> get devices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceModelsCollectionCopyWith<DeviceModelsCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelsCollectionCopyWith<$Res> {
  factory $DeviceModelsCollectionCopyWith(DeviceModelsCollection value,
          $Res Function(DeviceModelsCollection) then) =
      _$DeviceModelsCollectionCopyWithImpl<$Res, DeviceModelsCollection>;
  @useResult
  $Res call({int id, List<DeviceModel> devices});
}

/// @nodoc
class _$DeviceModelsCollectionCopyWithImpl<$Res,
        $Val extends DeviceModelsCollection>
    implements $DeviceModelsCollectionCopyWith<$Res> {
  _$DeviceModelsCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceModelsCollectionCopyWith<$Res>
    implements $DeviceModelsCollectionCopyWith<$Res> {
  factory _$$_DeviceModelsCollectionCopyWith(_$_DeviceModelsCollection value,
          $Res Function(_$_DeviceModelsCollection) then) =
      __$$_DeviceModelsCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<DeviceModel> devices});
}

/// @nodoc
class __$$_DeviceModelsCollectionCopyWithImpl<$Res>
    extends _$DeviceModelsCollectionCopyWithImpl<$Res,
        _$_DeviceModelsCollection>
    implements _$$_DeviceModelsCollectionCopyWith<$Res> {
  __$$_DeviceModelsCollectionCopyWithImpl(_$_DeviceModelsCollection _value,
      $Res Function(_$_DeviceModelsCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devices = null,
  }) {
    return _then(_$_DeviceModelsCollection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
    ));
  }
}

/// @nodoc

class _$_DeviceModelsCollection extends _DeviceModelsCollection {
  const _$_DeviceModelsCollection(
      {required this.id, required final List<DeviceModel> devices})
      : _devices = devices,
        super._();

  @override
  final int id;
  final List<DeviceModel> _devices;
  @override
  List<DeviceModel> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'DeviceModelsCollection(id: $id, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceModelsCollection &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceModelsCollectionCopyWith<_$_DeviceModelsCollection> get copyWith =>
      __$$_DeviceModelsCollectionCopyWithImpl<_$_DeviceModelsCollection>(
          this, _$identity);
}

abstract class _DeviceModelsCollection extends DeviceModelsCollection {
  const factory _DeviceModelsCollection(
      {required final int id,
      required final List<DeviceModel> devices}) = _$_DeviceModelsCollection;
  const _DeviceModelsCollection._() : super._();

  @override
  int get id;
  @override
  List<DeviceModel> get devices;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceModelsCollectionCopyWith<_$_DeviceModelsCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  DateTime? get addedOn => throw _privateConstructorUsedError;
  DateTime? get lastUsedOn => throw _privateConstructorUsedError;
  DateTime? get tokenUpdatedOn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      String ip,
      int port,
      String token,
      DateTime? addedOn,
      DateTime? lastUsedOn,
      DateTime? tokenUpdatedOn});
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? ip = null,
    Object? port = null,
    Object? token = null,
    Object? addedOn = freezed,
    Object? lastUsedOn = freezed,
    Object? tokenUpdatedOn = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      addedOn: freezed == addedOn
          ? _value.addedOn
          : addedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUsedOn: freezed == lastUsedOn
          ? _value.lastUsedOn
          : lastUsedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tokenUpdatedOn: freezed == tokenUpdatedOn
          ? _value.tokenUpdatedOn
          : tokenUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceModelCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$_DeviceModelCopyWith(
          _$_DeviceModel value, $Res Function(_$_DeviceModel) then) =
      __$$_DeviceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String ip,
      int port,
      String token,
      DateTime? addedOn,
      DateTime? lastUsedOn,
      DateTime? tokenUpdatedOn});
}

/// @nodoc
class __$$_DeviceModelCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$_DeviceModel>
    implements _$$_DeviceModelCopyWith<$Res> {
  __$$_DeviceModelCopyWithImpl(
      _$_DeviceModel _value, $Res Function(_$_DeviceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? ip = null,
    Object? port = null,
    Object? token = null,
    Object? addedOn = freezed,
    Object? lastUsedOn = freezed,
    Object? tokenUpdatedOn = freezed,
  }) {
    return _then(_$_DeviceModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      addedOn: freezed == addedOn
          ? _value.addedOn
          : addedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUsedOn: freezed == lastUsedOn
          ? _value.lastUsedOn
          : lastUsedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tokenUpdatedOn: freezed == tokenUpdatedOn
          ? _value.tokenUpdatedOn
          : tokenUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DeviceModel extends _DeviceModel {
  const _$_DeviceModel(
      {required this.title,
      required this.description,
      required this.ip,
      required this.port,
      required this.token,
      required this.addedOn,
      required this.lastUsedOn,
      required this.tokenUpdatedOn})
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final String ip;
  @override
  final int port;
  @override
  final String token;
  @override
  final DateTime? addedOn;
  @override
  final DateTime? lastUsedOn;
  @override
  final DateTime? tokenUpdatedOn;

  @override
  String toString() {
    return 'DeviceModel(title: $title, description: $description, ip: $ip, port: $port, token: $token, addedOn: $addedOn, lastUsedOn: $lastUsedOn, tokenUpdatedOn: $tokenUpdatedOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.addedOn, addedOn) || other.addedOn == addedOn) &&
            (identical(other.lastUsedOn, lastUsedOn) ||
                other.lastUsedOn == lastUsedOn) &&
            (identical(other.tokenUpdatedOn, tokenUpdatedOn) ||
                other.tokenUpdatedOn == tokenUpdatedOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, ip, port,
      token, addedOn, lastUsedOn, tokenUpdatedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      __$$_DeviceModelCopyWithImpl<_$_DeviceModel>(this, _$identity);
}

abstract class _DeviceModel extends DeviceModel {
  const factory _DeviceModel(
      {required final String title,
      required final String description,
      required final String ip,
      required final int port,
      required final String token,
      required final DateTime? addedOn,
      required final DateTime? lastUsedOn,
      required final DateTime? tokenUpdatedOn}) = _$_DeviceModel;
  const _DeviceModel._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  String get ip;
  @override
  int get port;
  @override
  String get token;
  @override
  DateTime? get addedOn;
  @override
  DateTime? get lastUsedOn;
  @override
  DateTime? get tokenUpdatedOn;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
