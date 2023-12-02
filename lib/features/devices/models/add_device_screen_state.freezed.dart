// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddDeviceScreenState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  CurrentStep get currentStep => throw _privateConstructorUsedError;
  String get deviceUUID => throw _privateConstructorUsedError;
  int? get deviceId => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get port => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  double? get ramAlertRange => throw _privateConstructorUsedError;
  double? get cpuAlertRange => throw _privateConstructorUsedError;
  double? get storageAlertRange => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  SuggestedDeviceDescModel? get suggestedDeviceDesc =>
      throw _privateConstructorUsedError;
  OtpUrlPickFromOptions get otpUrlPickFromOptions =>
      throw _privateConstructorUsedError;
  String? get otpUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDeviceScreenStateCopyWith<AddDeviceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeviceScreenStateCopyWith<$Res> {
  factory $AddDeviceScreenStateCopyWith(AddDeviceScreenState value,
          $Res Function(AddDeviceScreenState) then) =
      _$AddDeviceScreenStateCopyWithImpl<$Res, AddDeviceScreenState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      CurrentStep currentStep,
      String deviceUUID,
      int? deviceId,
      String? ip,
      String? port,
      String? otp,
      String? title,
      String? desc,
      double? ramAlertRange,
      double? cpuAlertRange,
      double? storageAlertRange,
      String? token,
      SuggestedDeviceDescModel? suggestedDeviceDesc,
      OtpUrlPickFromOptions otpUrlPickFromOptions,
      String? otpUrl});

  $SuggestedDeviceDescModelCopyWith<$Res>? get suggestedDeviceDesc;
}

/// @nodoc
class _$AddDeviceScreenStateCopyWithImpl<$Res,
        $Val extends AddDeviceScreenState>
    implements $AddDeviceScreenStateCopyWith<$Res> {
  _$AddDeviceScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? currentStep = null,
    Object? deviceUUID = null,
    Object? deviceId = freezed,
    Object? ip = freezed,
    Object? port = freezed,
    Object? otp = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? ramAlertRange = freezed,
    Object? cpuAlertRange = freezed,
    Object? storageAlertRange = freezed,
    Object? token = freezed,
    Object? suggestedDeviceDesc = freezed,
    Object? otpUrlPickFromOptions = null,
    Object? otpUrl = freezed,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CurrentStep,
      deviceUUID: null == deviceUUID
          ? _value.deviceUUID
          : deviceUUID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      ramAlertRange: freezed == ramAlertRange
          ? _value.ramAlertRange
          : ramAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      cpuAlertRange: freezed == cpuAlertRange
          ? _value.cpuAlertRange
          : cpuAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      storageAlertRange: freezed == storageAlertRange
          ? _value.storageAlertRange
          : storageAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestedDeviceDesc: freezed == suggestedDeviceDesc
          ? _value.suggestedDeviceDesc
          : suggestedDeviceDesc // ignore: cast_nullable_to_non_nullable
              as SuggestedDeviceDescModel?,
      otpUrlPickFromOptions: null == otpUrlPickFromOptions
          ? _value.otpUrlPickFromOptions
          : otpUrlPickFromOptions // ignore: cast_nullable_to_non_nullable
              as OtpUrlPickFromOptions,
      otpUrl: freezed == otpUrl
          ? _value.otpUrl
          : otpUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestedDeviceDescModelCopyWith<$Res>? get suggestedDeviceDesc {
    if (_value.suggestedDeviceDesc == null) {
      return null;
    }

    return $SuggestedDeviceDescModelCopyWith<$Res>(_value.suggestedDeviceDesc!,
        (value) {
      return _then(_value.copyWith(suggestedDeviceDesc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddDeviceScreenStateCopyWith<$Res>
    implements $AddDeviceScreenStateCopyWith<$Res> {
  factory _$$_AddDeviceScreenStateCopyWith(_$_AddDeviceScreenState value,
          $Res Function(_$_AddDeviceScreenState) then) =
      __$$_AddDeviceScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      CurrentStep currentStep,
      String deviceUUID,
      int? deviceId,
      String? ip,
      String? port,
      String? otp,
      String? title,
      String? desc,
      double? ramAlertRange,
      double? cpuAlertRange,
      double? storageAlertRange,
      String? token,
      SuggestedDeviceDescModel? suggestedDeviceDesc,
      OtpUrlPickFromOptions otpUrlPickFromOptions,
      String? otpUrl});

  @override
  $SuggestedDeviceDescModelCopyWith<$Res>? get suggestedDeviceDesc;
}

/// @nodoc
class __$$_AddDeviceScreenStateCopyWithImpl<$Res>
    extends _$AddDeviceScreenStateCopyWithImpl<$Res, _$_AddDeviceScreenState>
    implements _$$_AddDeviceScreenStateCopyWith<$Res> {
  __$$_AddDeviceScreenStateCopyWithImpl(_$_AddDeviceScreenState _value,
      $Res Function(_$_AddDeviceScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? currentStep = null,
    Object? deviceUUID = null,
    Object? deviceId = freezed,
    Object? ip = freezed,
    Object? port = freezed,
    Object? otp = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? ramAlertRange = freezed,
    Object? cpuAlertRange = freezed,
    Object? storageAlertRange = freezed,
    Object? token = freezed,
    Object? suggestedDeviceDesc = freezed,
    Object? otpUrlPickFromOptions = null,
    Object? otpUrl = freezed,
  }) {
    return _then(_$_AddDeviceScreenState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CurrentStep,
      deviceUUID: null == deviceUUID
          ? _value.deviceUUID
          : deviceUUID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      ramAlertRange: freezed == ramAlertRange
          ? _value.ramAlertRange
          : ramAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      cpuAlertRange: freezed == cpuAlertRange
          ? _value.cpuAlertRange
          : cpuAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      storageAlertRange: freezed == storageAlertRange
          ? _value.storageAlertRange
          : storageAlertRange // ignore: cast_nullable_to_non_nullable
              as double?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestedDeviceDesc: freezed == suggestedDeviceDesc
          ? _value.suggestedDeviceDesc
          : suggestedDeviceDesc // ignore: cast_nullable_to_non_nullable
              as SuggestedDeviceDescModel?,
      otpUrlPickFromOptions: null == otpUrlPickFromOptions
          ? _value.otpUrlPickFromOptions
          : otpUrlPickFromOptions // ignore: cast_nullable_to_non_nullable
              as OtpUrlPickFromOptions,
      otpUrl: freezed == otpUrl
          ? _value.otpUrl
          : otpUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddDeviceScreenState extends _AddDeviceScreenState {
  const _$_AddDeviceScreenState(
      {required this.formKey,
      required this.currentStep,
      required this.deviceUUID,
      required this.deviceId,
      required this.ip,
      required this.port,
      required this.otp,
      required this.title,
      required this.desc,
      required this.ramAlertRange,
      required this.cpuAlertRange,
      required this.storageAlertRange,
      required this.token,
      required this.suggestedDeviceDesc,
      required this.otpUrlPickFromOptions,
      required this.otpUrl})
      : super._();

  @override
  final GlobalKey<FormState> formKey;
  @override
  final CurrentStep currentStep;
  @override
  final String deviceUUID;
  @override
  final int? deviceId;
  @override
  final String? ip;
  @override
  final String? port;
  @override
  final String? otp;
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final double? ramAlertRange;
  @override
  final double? cpuAlertRange;
  @override
  final double? storageAlertRange;
  @override
  final String? token;
  @override
  final SuggestedDeviceDescModel? suggestedDeviceDesc;
  @override
  final OtpUrlPickFromOptions otpUrlPickFromOptions;
  @override
  final String? otpUrl;

  @override
  String toString() {
    return 'AddDeviceScreenState(formKey: $formKey, currentStep: $currentStep, deviceUUID: $deviceUUID, deviceId: $deviceId, ip: $ip, port: $port, otp: $otp, title: $title, desc: $desc, ramAlertRange: $ramAlertRange, cpuAlertRange: $cpuAlertRange, storageAlertRange: $storageAlertRange, token: $token, suggestedDeviceDesc: $suggestedDeviceDesc, otpUrlPickFromOptions: $otpUrlPickFromOptions, otpUrl: $otpUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDeviceScreenState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.deviceUUID, deviceUUID) ||
                other.deviceUUID == deviceUUID) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.ramAlertRange, ramAlertRange) ||
                other.ramAlertRange == ramAlertRange) &&
            (identical(other.cpuAlertRange, cpuAlertRange) ||
                other.cpuAlertRange == cpuAlertRange) &&
            (identical(other.storageAlertRange, storageAlertRange) ||
                other.storageAlertRange == storageAlertRange) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.suggestedDeviceDesc, suggestedDeviceDesc) ||
                other.suggestedDeviceDesc == suggestedDeviceDesc) &&
            (identical(other.otpUrlPickFromOptions, otpUrlPickFromOptions) ||
                other.otpUrlPickFromOptions == otpUrlPickFromOptions) &&
            (identical(other.otpUrl, otpUrl) || other.otpUrl == otpUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      currentStep,
      deviceUUID,
      deviceId,
      ip,
      port,
      otp,
      title,
      desc,
      ramAlertRange,
      cpuAlertRange,
      storageAlertRange,
      token,
      suggestedDeviceDesc,
      otpUrlPickFromOptions,
      otpUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDeviceScreenStateCopyWith<_$_AddDeviceScreenState> get copyWith =>
      __$$_AddDeviceScreenStateCopyWithImpl<_$_AddDeviceScreenState>(
          this, _$identity);
}

abstract class _AddDeviceScreenState extends AddDeviceScreenState {
  const factory _AddDeviceScreenState(
      {required final GlobalKey<FormState> formKey,
      required final CurrentStep currentStep,
      required final String deviceUUID,
      required final int? deviceId,
      required final String? ip,
      required final String? port,
      required final String? otp,
      required final String? title,
      required final String? desc,
      required final double? ramAlertRange,
      required final double? cpuAlertRange,
      required final double? storageAlertRange,
      required final String? token,
      required final SuggestedDeviceDescModel? suggestedDeviceDesc,
      required final OtpUrlPickFromOptions otpUrlPickFromOptions,
      required final String? otpUrl}) = _$_AddDeviceScreenState;
  const _AddDeviceScreenState._() : super._();

  @override
  GlobalKey<FormState> get formKey;
  @override
  CurrentStep get currentStep;
  @override
  String get deviceUUID;
  @override
  int? get deviceId;
  @override
  String? get ip;
  @override
  String? get port;
  @override
  String? get otp;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  double? get ramAlertRange;
  @override
  double? get cpuAlertRange;
  @override
  double? get storageAlertRange;
  @override
  String? get token;
  @override
  SuggestedDeviceDescModel? get suggestedDeviceDesc;
  @override
  OtpUrlPickFromOptions get otpUrlPickFromOptions;
  @override
  String? get otpUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AddDeviceScreenStateCopyWith<_$_AddDeviceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
