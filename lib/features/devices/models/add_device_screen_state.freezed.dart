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
  CurrentStep get currentStep => throw _privateConstructorUsedError;

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
  $Res call({CurrentStep currentStep});
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
    Object? currentStep = null,
  }) {
    return _then(_value.copyWith(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CurrentStep,
    ) as $Val);
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
  $Res call({CurrentStep currentStep});
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
    Object? currentStep = null,
  }) {
    return _then(_$_AddDeviceScreenState(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CurrentStep,
    ));
  }
}

/// @nodoc

class _$_AddDeviceScreenState extends _AddDeviceScreenState {
  const _$_AddDeviceScreenState({required this.currentStep}) : super._();

  @override
  final CurrentStep currentStep;

  @override
  String toString() {
    return 'AddDeviceScreenState(currentStep: $currentStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDeviceScreenState &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDeviceScreenStateCopyWith<_$_AddDeviceScreenState> get copyWith =>
      __$$_AddDeviceScreenStateCopyWithImpl<_$_AddDeviceScreenState>(
          this, _$identity);
}

abstract class _AddDeviceScreenState extends AddDeviceScreenState {
  const factory _AddDeviceScreenState(
      {required final CurrentStep currentStep}) = _$_AddDeviceScreenState;
  const _AddDeviceScreenState._() : super._();

  @override
  CurrentStep get currentStep;
  @override
  @JsonKey(ignore: true)
  _$$_AddDeviceScreenStateCopyWith<_$_AddDeviceScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
