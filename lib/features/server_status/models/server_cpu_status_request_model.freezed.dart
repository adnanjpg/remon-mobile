// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_cpu_status_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerCpuStatusRequestModel _$ServerCpuStatusRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ServerCpuStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ServerCpuStatusRequestModel {
  @JsonKey(name: 'start_time')
  int get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  int get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCpuStatusRequestModelCopyWith<ServerCpuStatusRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCpuStatusRequestModelCopyWith<$Res> {
  factory $ServerCpuStatusRequestModelCopyWith(
          ServerCpuStatusRequestModel value,
          $Res Function(ServerCpuStatusRequestModel) then) =
      _$ServerCpuStatusRequestModelCopyWithImpl<$Res,
          ServerCpuStatusRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'end_time') int endTime});
}

/// @nodoc
class _$ServerCpuStatusRequestModelCopyWithImpl<$Res,
        $Val extends ServerCpuStatusRequestModel>
    implements $ServerCpuStatusRequestModelCopyWith<$Res> {
  _$ServerCpuStatusRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerCpuStatusRequestModelCopyWith<$Res>
    implements $ServerCpuStatusRequestModelCopyWith<$Res> {
  factory _$$_ServerCpuStatusRequestModelCopyWith(
          _$_ServerCpuStatusRequestModel value,
          $Res Function(_$_ServerCpuStatusRequestModel) then) =
      __$$_ServerCpuStatusRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'end_time') int endTime});
}

/// @nodoc
class __$$_ServerCpuStatusRequestModelCopyWithImpl<$Res>
    extends _$ServerCpuStatusRequestModelCopyWithImpl<$Res,
        _$_ServerCpuStatusRequestModel>
    implements _$$_ServerCpuStatusRequestModelCopyWith<$Res> {
  __$$_ServerCpuStatusRequestModelCopyWithImpl(
      _$_ServerCpuStatusRequestModel _value,
      $Res Function(_$_ServerCpuStatusRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_ServerCpuStatusRequestModel(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerCpuStatusRequestModel extends _ServerCpuStatusRequestModel {
  const _$_ServerCpuStatusRequestModel(
      {@JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime})
      : super._();

  factory _$_ServerCpuStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerCpuStatusRequestModelFromJson(json);

  @override
  @JsonKey(name: 'start_time')
  final int startTime;
  @override
  @JsonKey(name: 'end_time')
  final int endTime;

  @override
  String toString() {
    return 'ServerCpuStatusRequestModel(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerCpuStatusRequestModel &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCpuStatusRequestModelCopyWith<_$_ServerCpuStatusRequestModel>
      get copyWith => __$$_ServerCpuStatusRequestModelCopyWithImpl<
          _$_ServerCpuStatusRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerCpuStatusRequestModelToJson(
      this,
    );
  }
}

abstract class _ServerCpuStatusRequestModel
    extends ServerCpuStatusRequestModel {
  const factory _ServerCpuStatusRequestModel(
          {@JsonKey(name: 'start_time') required final int startTime,
          @JsonKey(name: 'end_time') required final int endTime}) =
      _$_ServerCpuStatusRequestModel;
  const _ServerCpuStatusRequestModel._() : super._();

  factory _ServerCpuStatusRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ServerCpuStatusRequestModel.fromJson;

  @override
  @JsonKey(name: 'start_time')
  int get startTime;
  @override
  @JsonKey(name: 'end_time')
  int get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCpuStatusRequestModelCopyWith<_$_ServerCpuStatusRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
