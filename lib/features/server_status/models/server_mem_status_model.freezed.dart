// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_mem_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerMemStatusModel _$ServerMemStatusModelFromJson(Map<String, dynamic> json) {
  return _ServerMemStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ServerMemStatusModel {
  @JsonKey(name: 'frames')
  List<MemUsageFrameModel> get frames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerMemStatusModelCopyWith<ServerMemStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerMemStatusModelCopyWith<$Res> {
  factory $ServerMemStatusModelCopyWith(ServerMemStatusModel value,
          $Res Function(ServerMemStatusModel) then) =
      _$ServerMemStatusModelCopyWithImpl<$Res, ServerMemStatusModel>;
  @useResult
  $Res call({@JsonKey(name: 'frames') List<MemUsageFrameModel> frames});
}

/// @nodoc
class _$ServerMemStatusModelCopyWithImpl<$Res,
        $Val extends ServerMemStatusModel>
    implements $ServerMemStatusModelCopyWith<$Res> {
  _$ServerMemStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
  }) {
    return _then(_value.copyWith(
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<MemUsageFrameModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerMemStatusModelCopyWith<$Res>
    implements $ServerMemStatusModelCopyWith<$Res> {
  factory _$$_ServerMemStatusModelCopyWith(_$_ServerMemStatusModel value,
          $Res Function(_$_ServerMemStatusModel) then) =
      __$$_ServerMemStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'frames') List<MemUsageFrameModel> frames});
}

/// @nodoc
class __$$_ServerMemStatusModelCopyWithImpl<$Res>
    extends _$ServerMemStatusModelCopyWithImpl<$Res, _$_ServerMemStatusModel>
    implements _$$_ServerMemStatusModelCopyWith<$Res> {
  __$$_ServerMemStatusModelCopyWithImpl(_$_ServerMemStatusModel _value,
      $Res Function(_$_ServerMemStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
  }) {
    return _then(_$_ServerMemStatusModel(
      frames: null == frames
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<MemUsageFrameModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerMemStatusModel extends _ServerMemStatusModel {
  const _$_ServerMemStatusModel(
      {@JsonKey(name: 'frames') required final List<MemUsageFrameModel> frames})
      : _frames = frames,
        super._();

  factory _$_ServerMemStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerMemStatusModelFromJson(json);

  final List<MemUsageFrameModel> _frames;
  @override
  @JsonKey(name: 'frames')
  List<MemUsageFrameModel> get frames {
    if (_frames is EqualUnmodifiableListView) return _frames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  @override
  String toString() {
    return 'ServerMemStatusModel(frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerMemStatusModel &&
            const DeepCollectionEquality().equals(other._frames, _frames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_frames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerMemStatusModelCopyWith<_$_ServerMemStatusModel> get copyWith =>
      __$$_ServerMemStatusModelCopyWithImpl<_$_ServerMemStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerMemStatusModelToJson(
      this,
    );
  }
}

abstract class _ServerMemStatusModel extends ServerMemStatusModel {
  const factory _ServerMemStatusModel(
          {@JsonKey(name: 'frames')
          required final List<MemUsageFrameModel> frames}) =
      _$_ServerMemStatusModel;
  const _ServerMemStatusModel._() : super._();

  factory _ServerMemStatusModel.fromJson(Map<String, dynamic> json) =
      _$_ServerMemStatusModel.fromJson;

  @override
  @JsonKey(name: 'frames')
  List<MemUsageFrameModel> get frames;
  @override
  @JsonKey(ignore: true)
  _$$_ServerMemStatusModelCopyWith<_$_ServerMemStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MemUsageFrameModel _$MemUsageFrameModelFromJson(Map<String, dynamic> json) {
  return _MemUsageFrameModel.fromJson(json);
}

/// @nodoc
mixin _$MemUsageFrameModel {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  int get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemUsageFrameModelCopyWith<MemUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemUsageFrameModelCopyWith<$Res> {
  factory $MemUsageFrameModelCopyWith(
          MemUsageFrameModel value, $Res Function(MemUsageFrameModel) then) =
      _$MemUsageFrameModelCopyWithImpl<$Res, MemUsageFrameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class _$MemUsageFrameModelCopyWithImpl<$Res, $Val extends MemUsageFrameModel>
    implements $MemUsageFrameModelCopyWith<$Res> {
  _$MemUsageFrameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemUsageFrameModelCopyWith<$Res>
    implements $MemUsageFrameModelCopyWith<$Res> {
  factory _$$_MemUsageFrameModelCopyWith(_$_MemUsageFrameModel value,
          $Res Function(_$_MemUsageFrameModel) then) =
      __$$_MemUsageFrameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class __$$_MemUsageFrameModelCopyWithImpl<$Res>
    extends _$MemUsageFrameModelCopyWithImpl<$Res, _$_MemUsageFrameModel>
    implements _$$_MemUsageFrameModelCopyWith<$Res> {
  __$$_MemUsageFrameModelCopyWithImpl(
      _$_MemUsageFrameModel _value, $Res Function(_$_MemUsageFrameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_$_MemUsageFrameModel(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemUsageFrameModel extends _MemUsageFrameModel {
  const _$_MemUsageFrameModel(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'available') required this.available})
      : super._();

  factory _$_MemUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemUsageFrameModelFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'available')
  final int available;

  @override
  String toString() {
    return 'MemUsageFrameModel(total: $total, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemUsageFrameModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemUsageFrameModelCopyWith<_$_MemUsageFrameModel> get copyWith =>
      __$$_MemUsageFrameModelCopyWithImpl<_$_MemUsageFrameModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemUsageFrameModelToJson(
      this,
    );
  }
}

abstract class _MemUsageFrameModel extends MemUsageFrameModel {
  const factory _MemUsageFrameModel(
          {@JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'available') required final int available}) =
      _$_MemUsageFrameModel;
  const _MemUsageFrameModel._() : super._();

  factory _MemUsageFrameModel.fromJson(Map<String, dynamic> json) =
      _$_MemUsageFrameModel.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'available')
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$_MemUsageFrameModelCopyWith<_$_MemUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
