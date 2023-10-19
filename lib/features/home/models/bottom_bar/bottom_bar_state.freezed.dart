// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomBarState {
  BottomBarIndex get bottomBarIndex => throw _privateConstructorUsedError;
  bool get isFadingOut => throw _privateConstructorUsedError;
  bool get isFadingIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarStateCopyWith<BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarStateCopyWith<$Res> {
  factory $BottomBarStateCopyWith(
          BottomBarState value, $Res Function(BottomBarState) then) =
      _$BottomBarStateCopyWithImpl<$Res, BottomBarState>;
  @useResult
  $Res call({BottomBarIndex bottomBarIndex, bool isFadingOut, bool isFadingIn});
}

/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res, $Val extends BottomBarState>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomBarIndex = null,
    Object? isFadingOut = null,
    Object? isFadingIn = null,
  }) {
    return _then(_value.copyWith(
      bottomBarIndex: null == bottomBarIndex
          ? _value.bottomBarIndex
          : bottomBarIndex // ignore: cast_nullable_to_non_nullable
              as BottomBarIndex,
      isFadingOut: null == isFadingOut
          ? _value.isFadingOut
          : isFadingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isFadingIn: null == isFadingIn
          ? _value.isFadingIn
          : isFadingIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomBarStateCopyWith<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  factory _$$_BottomBarStateCopyWith(
          _$_BottomBarState value, $Res Function(_$_BottomBarState) then) =
      __$$_BottomBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BottomBarIndex bottomBarIndex, bool isFadingOut, bool isFadingIn});
}

/// @nodoc
class __$$_BottomBarStateCopyWithImpl<$Res>
    extends _$BottomBarStateCopyWithImpl<$Res, _$_BottomBarState>
    implements _$$_BottomBarStateCopyWith<$Res> {
  __$$_BottomBarStateCopyWithImpl(
      _$_BottomBarState _value, $Res Function(_$_BottomBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomBarIndex = null,
    Object? isFadingOut = null,
    Object? isFadingIn = null,
  }) {
    return _then(_$_BottomBarState(
      bottomBarIndex: null == bottomBarIndex
          ? _value.bottomBarIndex
          : bottomBarIndex // ignore: cast_nullable_to_non_nullable
              as BottomBarIndex,
      isFadingOut: null == isFadingOut
          ? _value.isFadingOut
          : isFadingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isFadingIn: null == isFadingIn
          ? _value.isFadingIn
          : isFadingIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BottomBarState extends _BottomBarState {
  _$_BottomBarState(
      {required this.bottomBarIndex,
      required this.isFadingOut,
      required this.isFadingIn})
      : super._();

  @override
  final BottomBarIndex bottomBarIndex;
  @override
  final bool isFadingOut;
  @override
  final bool isFadingIn;

  @override
  String toString() {
    return 'BottomBarState(bottomBarIndex: $bottomBarIndex, isFadingOut: $isFadingOut, isFadingIn: $isFadingIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomBarState &&
            (identical(other.bottomBarIndex, bottomBarIndex) ||
                other.bottomBarIndex == bottomBarIndex) &&
            (identical(other.isFadingOut, isFadingOut) ||
                other.isFadingOut == isFadingOut) &&
            (identical(other.isFadingIn, isFadingIn) ||
                other.isFadingIn == isFadingIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bottomBarIndex, isFadingOut, isFadingIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      __$$_BottomBarStateCopyWithImpl<_$_BottomBarState>(this, _$identity);
}

abstract class _BottomBarState extends BottomBarState {
  factory _BottomBarState(
      {required final BottomBarIndex bottomBarIndex,
      required final bool isFadingOut,
      required final bool isFadingIn}) = _$_BottomBarState;
  _BottomBarState._() : super._();

  @override
  BottomBarIndex get bottomBarIndex;
  @override
  bool get isFadingOut;
  @override
  bool get isFadingIn;
  @override
  @JsonKey(ignore: true)
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
