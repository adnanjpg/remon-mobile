// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_init_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInitState {
  AppSettings? get settings => throw _privateConstructorUsedError;
  bool get isInited => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInitStateCopyWith<AppInitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInitStateCopyWith<$Res> {
  factory $AppInitStateCopyWith(
          AppInitState value, $Res Function(AppInitState) then) =
      _$AppInitStateCopyWithImpl<$Res, AppInitState>;
  @useResult
  $Res call({AppSettings? settings, bool isInited});

  $AppSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$AppInitStateCopyWithImpl<$Res, $Val extends AppInitState>
    implements $AppInitStateCopyWith<$Res> {
  _$AppInitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = freezed,
    Object? isInited = null,
  }) {
    return _then(_value.copyWith(
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AppSettings?,
      isInited: null == isInited
          ? _value.isInited
          : isInited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $AppSettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppInitStateCopyWith<$Res>
    implements $AppInitStateCopyWith<$Res> {
  factory _$$_AppInitStateCopyWith(
          _$_AppInitState value, $Res Function(_$_AppInitState) then) =
      __$$_AppInitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettings? settings, bool isInited});

  @override
  $AppSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$$_AppInitStateCopyWithImpl<$Res>
    extends _$AppInitStateCopyWithImpl<$Res, _$_AppInitState>
    implements _$$_AppInitStateCopyWith<$Res> {
  __$$_AppInitStateCopyWithImpl(
      _$_AppInitState _value, $Res Function(_$_AppInitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = freezed,
    Object? isInited = null,
  }) {
    return _then(_$_AppInitState(
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AppSettings?,
      isInited: null == isInited
          ? _value.isInited
          : isInited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppInitState implements _AppInitState {
  const _$_AppInitState({required this.settings, this.isInited = false});

  @override
  final AppSettings? settings;
  @override
  @JsonKey()
  final bool isInited;

  @override
  String toString() {
    return 'AppInitState(settings: $settings, isInited: $isInited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppInitState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.isInited, isInited) ||
                other.isInited == isInited));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, isInited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppInitStateCopyWith<_$_AppInitState> get copyWith =>
      __$$_AppInitStateCopyWithImpl<_$_AppInitState>(this, _$identity);
}

abstract class _AppInitState implements AppInitState {
  const factory _AppInitState(
      {required final AppSettings? settings,
      final bool isInited}) = _$_AppInitState;

  @override
  AppSettings? get settings;
  @override
  bool get isInited;
  @override
  @JsonKey(ignore: true)
  _$$_AppInitStateCopyWith<_$_AppInitState> get copyWith =>
      throw _privateConstructorUsedError;
}
