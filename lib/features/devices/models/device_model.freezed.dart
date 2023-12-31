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
mixin _$DeviceModel {
  int get id => throw _privateConstructorUsedError;
  String get deviceUUID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  double get ramAlertRange => throw _privateConstructorUsedError;
  double get cpuAlertRange => throw _privateConstructorUsedError;
  double get diskAlertRange => throw _privateConstructorUsedError;
  DateTime? get addedOn =>
      throw _privateConstructorUsedError; // will be used to sort devices and determine
// which device should data be fetched from
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
      {int id,
      String deviceUUID,
      String title,
      String description,
      String ip,
      int port,
      String token,
      double ramAlertRange,
      double cpuAlertRange,
      double diskAlertRange,
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
    Object? id = null,
    Object? deviceUUID = null,
    Object? title = null,
    Object? description = null,
    Object? ip = null,
    Object? port = null,
    Object? token = null,
    Object? ramAlertRange = null,
    Object? cpuAlertRange = null,
    Object? diskAlertRange = null,
    Object? addedOn = freezed,
    Object? lastUsedOn = freezed,
    Object? tokenUpdatedOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deviceUUID: null == deviceUUID
          ? _value.deviceUUID
          : deviceUUID // ignore: cast_nullable_to_non_nullable
              as String,
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
      ramAlertRange: null == ramAlertRange
          ? _value.ramAlertRange
          : ramAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
      cpuAlertRange: null == cpuAlertRange
          ? _value.cpuAlertRange
          : cpuAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
      diskAlertRange: null == diskAlertRange
          ? _value.diskAlertRange
          : diskAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
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
      {int id,
      String deviceUUID,
      String title,
      String description,
      String ip,
      int port,
      String token,
      double ramAlertRange,
      double cpuAlertRange,
      double diskAlertRange,
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
    Object? id = null,
    Object? deviceUUID = null,
    Object? title = null,
    Object? description = null,
    Object? ip = null,
    Object? port = null,
    Object? token = null,
    Object? ramAlertRange = null,
    Object? cpuAlertRange = null,
    Object? diskAlertRange = null,
    Object? addedOn = freezed,
    Object? lastUsedOn = freezed,
    Object? tokenUpdatedOn = freezed,
  }) {
    return _then(_$_DeviceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      deviceUUID: null == deviceUUID
          ? _value.deviceUUID
          : deviceUUID // ignore: cast_nullable_to_non_nullable
              as String,
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
      ramAlertRange: null == ramAlertRange
          ? _value.ramAlertRange
          : ramAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
      cpuAlertRange: null == cpuAlertRange
          ? _value.cpuAlertRange
          : cpuAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
      diskAlertRange: null == diskAlertRange
          ? _value.diskAlertRange
          : diskAlertRange // ignore: cast_nullable_to_non_nullable
              as double,
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
      {required this.id,
      required this.deviceUUID,
      required this.title,
      required this.description,
      required this.ip,
      required this.port,
      required this.token,
      required this.ramAlertRange,
      required this.cpuAlertRange,
      required this.diskAlertRange,
      required this.addedOn,
      required this.lastUsedOn,
      required this.tokenUpdatedOn})
      : super._();

  @override
  final int id;
  @override
  final String deviceUUID;
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
  final double ramAlertRange;
  @override
  final double cpuAlertRange;
  @override
  final double diskAlertRange;
  @override
  final DateTime? addedOn;
// will be used to sort devices and determine
// which device should data be fetched from
  @override
  final DateTime? lastUsedOn;
  @override
  final DateTime? tokenUpdatedOn;

  @override
  String toString() {
    return 'DeviceModel(id: $id, deviceUUID: $deviceUUID, title: $title, description: $description, ip: $ip, port: $port, token: $token, ramAlertRange: $ramAlertRange, cpuAlertRange: $cpuAlertRange, diskAlertRange: $diskAlertRange, addedOn: $addedOn, lastUsedOn: $lastUsedOn, tokenUpdatedOn: $tokenUpdatedOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceUUID, deviceUUID) ||
                other.deviceUUID == deviceUUID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.ramAlertRange, ramAlertRange) ||
                other.ramAlertRange == ramAlertRange) &&
            (identical(other.cpuAlertRange, cpuAlertRange) ||
                other.cpuAlertRange == cpuAlertRange) &&
            (identical(other.diskAlertRange, diskAlertRange) ||
                other.diskAlertRange == diskAlertRange) &&
            (identical(other.addedOn, addedOn) || other.addedOn == addedOn) &&
            (identical(other.lastUsedOn, lastUsedOn) ||
                other.lastUsedOn == lastUsedOn) &&
            (identical(other.tokenUpdatedOn, tokenUpdatedOn) ||
                other.tokenUpdatedOn == tokenUpdatedOn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceUUID,
      title,
      description,
      ip,
      port,
      token,
      ramAlertRange,
      cpuAlertRange,
      diskAlertRange,
      addedOn,
      lastUsedOn,
      tokenUpdatedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      __$$_DeviceModelCopyWithImpl<_$_DeviceModel>(this, _$identity);
}

abstract class _DeviceModel extends DeviceModel {
  const factory _DeviceModel(
      {required final int id,
      required final String deviceUUID,
      required final String title,
      required final String description,
      required final String ip,
      required final int port,
      required final String token,
      required final double ramAlertRange,
      required final double cpuAlertRange,
      required final double diskAlertRange,
      required final DateTime? addedOn,
      required final DateTime? lastUsedOn,
      required final DateTime? tokenUpdatedOn}) = _$_DeviceModel;
  const _DeviceModel._() : super._();

  @override
  int get id;
  @override
  String get deviceUUID;
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
  double get ramAlertRange;
  @override
  double get cpuAlertRange;
  @override
  double get diskAlertRange;
  @override
  DateTime? get addedOn;
  @override // will be used to sort devices and determine
// which device should data be fetched from
  DateTime? get lastUsedOn;
  @override
  DateTime? get tokenUpdatedOn;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceModelCopyWith<_$_DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateDeviceInfoRequestModel _$UpdateDeviceInfoRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateDeviceInfoRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateDeviceInfoRequestModel {
  @JsonKey(name: 'cpu_threshold')
  double get cpuThreshold => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem_threshold')
  double get memThreshold => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk_threshold')
  double get diskThreshold => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateDeviceInfoRequestModelCopyWith<UpdateDeviceInfoRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDeviceInfoRequestModelCopyWith<$Res> {
  factory $UpdateDeviceInfoRequestModelCopyWith(
          UpdateDeviceInfoRequestModel value,
          $Res Function(UpdateDeviceInfoRequestModel) then) =
      _$UpdateDeviceInfoRequestModelCopyWithImpl<$Res,
          UpdateDeviceInfoRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_threshold') double cpuThreshold,
      @JsonKey(name: 'mem_threshold') double memThreshold,
      @JsonKey(name: 'disk_threshold') double diskThreshold,
      @JsonKey(name: 'fcm_token') String? fcmToken});
}

/// @nodoc
class _$UpdateDeviceInfoRequestModelCopyWithImpl<$Res,
        $Val extends UpdateDeviceInfoRequestModel>
    implements $UpdateDeviceInfoRequestModelCopyWith<$Res> {
  _$UpdateDeviceInfoRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuThreshold = null,
    Object? memThreshold = null,
    Object? diskThreshold = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      cpuThreshold: null == cpuThreshold
          ? _value.cpuThreshold
          : cpuThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      memThreshold: null == memThreshold
          ? _value.memThreshold
          : memThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      diskThreshold: null == diskThreshold
          ? _value.diskThreshold
          : diskThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateDeviceInfoRequestModelCopyWith<$Res>
    implements $UpdateDeviceInfoRequestModelCopyWith<$Res> {
  factory _$$_UpdateDeviceInfoRequestModelCopyWith(
          _$_UpdateDeviceInfoRequestModel value,
          $Res Function(_$_UpdateDeviceInfoRequestModel) then) =
      __$$_UpdateDeviceInfoRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_threshold') double cpuThreshold,
      @JsonKey(name: 'mem_threshold') double memThreshold,
      @JsonKey(name: 'disk_threshold') double diskThreshold,
      @JsonKey(name: 'fcm_token') String? fcmToken});
}

/// @nodoc
class __$$_UpdateDeviceInfoRequestModelCopyWithImpl<$Res>
    extends _$UpdateDeviceInfoRequestModelCopyWithImpl<$Res,
        _$_UpdateDeviceInfoRequestModel>
    implements _$$_UpdateDeviceInfoRequestModelCopyWith<$Res> {
  __$$_UpdateDeviceInfoRequestModelCopyWithImpl(
      _$_UpdateDeviceInfoRequestModel _value,
      $Res Function(_$_UpdateDeviceInfoRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuThreshold = null,
    Object? memThreshold = null,
    Object? diskThreshold = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_$_UpdateDeviceInfoRequestModel(
      cpuThreshold: null == cpuThreshold
          ? _value.cpuThreshold
          : cpuThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      memThreshold: null == memThreshold
          ? _value.memThreshold
          : memThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      diskThreshold: null == diskThreshold
          ? _value.diskThreshold
          : diskThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateDeviceInfoRequestModel implements _UpdateDeviceInfoRequestModel {
  const _$_UpdateDeviceInfoRequestModel(
      {@JsonKey(name: 'cpu_threshold') required this.cpuThreshold,
      @JsonKey(name: 'mem_threshold') required this.memThreshold,
      @JsonKey(name: 'disk_threshold') required this.diskThreshold,
      @JsonKey(name: 'fcm_token') required this.fcmToken});

  factory _$_UpdateDeviceInfoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateDeviceInfoRequestModelFromJson(json);

  @override
  @JsonKey(name: 'cpu_threshold')
  final double cpuThreshold;
  @override
  @JsonKey(name: 'mem_threshold')
  final double memThreshold;
  @override
  @JsonKey(name: 'disk_threshold')
  final double diskThreshold;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;

  @override
  String toString() {
    return 'UpdateDeviceInfoRequestModel(cpuThreshold: $cpuThreshold, memThreshold: $memThreshold, diskThreshold: $diskThreshold, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDeviceInfoRequestModel &&
            (identical(other.cpuThreshold, cpuThreshold) ||
                other.cpuThreshold == cpuThreshold) &&
            (identical(other.memThreshold, memThreshold) ||
                other.memThreshold == memThreshold) &&
            (identical(other.diskThreshold, diskThreshold) ||
                other.diskThreshold == diskThreshold) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cpuThreshold, memThreshold, diskThreshold, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateDeviceInfoRequestModelCopyWith<_$_UpdateDeviceInfoRequestModel>
      get copyWith => __$$_UpdateDeviceInfoRequestModelCopyWithImpl<
          _$_UpdateDeviceInfoRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateDeviceInfoRequestModelToJson(
      this,
    );
  }
}

abstract class _UpdateDeviceInfoRequestModel
    implements UpdateDeviceInfoRequestModel {
  const factory _UpdateDeviceInfoRequestModel(
          {@JsonKey(name: 'cpu_threshold') required final double cpuThreshold,
          @JsonKey(name: 'mem_threshold') required final double memThreshold,
          @JsonKey(name: 'disk_threshold') required final double diskThreshold,
          @JsonKey(name: 'fcm_token') required final String? fcmToken}) =
      _$_UpdateDeviceInfoRequestModel;

  factory _UpdateDeviceInfoRequestModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateDeviceInfoRequestModel.fromJson;

  @override
  @JsonKey(name: 'cpu_threshold')
  double get cpuThreshold;
  @override
  @JsonKey(name: 'mem_threshold')
  double get memThreshold;
  @override
  @JsonKey(name: 'disk_threshold')
  double get diskThreshold;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateDeviceInfoRequestModelCopyWith<_$_UpdateDeviceInfoRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
