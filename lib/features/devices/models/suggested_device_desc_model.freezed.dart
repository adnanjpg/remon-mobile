// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_device_desc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestedDeviceDescModel _$SuggestedDeviceDescModelFromJson(
    Map<String, dynamic> json) {
  return _SuggestedDeviceDescModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestedDeviceDescModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestedDeviceDescModelCopyWith<SuggestedDeviceDescModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestedDeviceDescModelCopyWith<$Res> {
  factory $SuggestedDeviceDescModelCopyWith(SuggestedDeviceDescModel value,
          $Res Function(SuggestedDeviceDescModel) then) =
      _$SuggestedDeviceDescModelCopyWithImpl<$Res, SuggestedDeviceDescModel>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$SuggestedDeviceDescModelCopyWithImpl<$Res,
        $Val extends SuggestedDeviceDescModel>
    implements $SuggestedDeviceDescModelCopyWith<$Res> {
  _$SuggestedDeviceDescModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuggestedDeviceDescModelCopyWith<$Res>
    implements $SuggestedDeviceDescModelCopyWith<$Res> {
  factory _$$_SuggestedDeviceDescModelCopyWith(
          _$_SuggestedDeviceDescModel value,
          $Res Function(_$_SuggestedDeviceDescModel) then) =
      __$$_SuggestedDeviceDescModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_SuggestedDeviceDescModelCopyWithImpl<$Res>
    extends _$SuggestedDeviceDescModelCopyWithImpl<$Res,
        _$_SuggestedDeviceDescModel>
    implements _$$_SuggestedDeviceDescModelCopyWith<$Res> {
  __$$_SuggestedDeviceDescModelCopyWithImpl(_$_SuggestedDeviceDescModel _value,
      $Res Function(_$_SuggestedDeviceDescModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_SuggestedDeviceDescModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestedDeviceDescModel extends _SuggestedDeviceDescModel {
  const _$_SuggestedDeviceDescModel(
      {required this.name, required this.description})
      : super._();

  factory _$_SuggestedDeviceDescModel.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestedDeviceDescModelFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'SuggestedDeviceDescModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestedDeviceDescModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestedDeviceDescModelCopyWith<_$_SuggestedDeviceDescModel>
      get copyWith => __$$_SuggestedDeviceDescModelCopyWithImpl<
          _$_SuggestedDeviceDescModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestedDeviceDescModelToJson(
      this,
    );
  }
}

abstract class _SuggestedDeviceDescModel extends SuggestedDeviceDescModel {
  const factory _SuggestedDeviceDescModel(
      {required final String name,
      required final String description}) = _$_SuggestedDeviceDescModel;
  const _SuggestedDeviceDescModel._() : super._();

  factory _SuggestedDeviceDescModel.fromJson(Map<String, dynamic> json) =
      _$_SuggestedDeviceDescModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestedDeviceDescModelCopyWith<_$_SuggestedDeviceDescModel>
      get copyWith => throw _privateConstructorUsedError;
}
