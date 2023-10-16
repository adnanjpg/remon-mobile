// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
mixin _$AppSettings {
  bool get isOpenedBefore => throw _privateConstructorUsedError;
  UserTrackingStatus get userTrackingStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call({bool isOpenedBefore, UserTrackingStatus userTrackingStatus});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenedBefore = null,
    Object? userTrackingStatus = null,
  }) {
    return _then(_value.copyWith(
      isOpenedBefore: null == isOpenedBefore
          ? _value.isOpenedBefore
          : isOpenedBefore // ignore: cast_nullable_to_non_nullable
              as bool,
      userTrackingStatus: null == userTrackingStatus
          ? _value.userTrackingStatus
          : userTrackingStatus // ignore: cast_nullable_to_non_nullable
              as UserTrackingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$_AppSettingsCopyWith(
          _$_AppSettings value, $Res Function(_$_AppSettings) then) =
      __$$_AppSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOpenedBefore, UserTrackingStatus userTrackingStatus});
}

/// @nodoc
class __$$_AppSettingsCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$_AppSettings>
    implements _$$_AppSettingsCopyWith<$Res> {
  __$$_AppSettingsCopyWithImpl(
      _$_AppSettings _value, $Res Function(_$_AppSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenedBefore = null,
    Object? userTrackingStatus = null,
  }) {
    return _then(_$_AppSettings(
      isOpenedBefore: null == isOpenedBefore
          ? _value.isOpenedBefore
          : isOpenedBefore // ignore: cast_nullable_to_non_nullable
              as bool,
      userTrackingStatus: null == userTrackingStatus
          ? _value.userTrackingStatus
          : userTrackingStatus // ignore: cast_nullable_to_non_nullable
              as UserTrackingStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettings with DiagnosticableTreeMixin implements _AppSettings {
  const _$_AppSettings(
      {required this.isOpenedBefore, required this.userTrackingStatus});

  factory _$_AppSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsFromJson(json);

  @override
  final bool isOpenedBefore;
  @override
  final UserTrackingStatus userTrackingStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppSettings(isOpenedBefore: $isOpenedBefore, userTrackingStatus: $userTrackingStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppSettings'))
      ..add(DiagnosticsProperty('isOpenedBefore', isOpenedBefore))
      ..add(DiagnosticsProperty('userTrackingStatus', userTrackingStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettings &&
            (identical(other.isOpenedBefore, isOpenedBefore) ||
                other.isOpenedBefore == isOpenedBefore) &&
            (identical(other.userTrackingStatus, userTrackingStatus) ||
                other.userTrackingStatus == userTrackingStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isOpenedBefore, userTrackingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      __$$_AppSettingsCopyWithImpl<_$_AppSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsToJson(
      this,
    );
  }
}

abstract class _AppSettings implements AppSettings {
  const factory _AppSettings(
      {required final bool isOpenedBefore,
      required final UserTrackingStatus userTrackingStatus}) = _$_AppSettings;

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$_AppSettings.fromJson;

  @override
  bool get isOpenedBefore;
  @override
  UserTrackingStatus get userTrackingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
