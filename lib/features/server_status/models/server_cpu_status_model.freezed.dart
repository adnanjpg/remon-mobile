// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_cpu_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerCpuStatusModel _$ServerCpuStatusModelFromJson(Map<String, dynamic> json) {
  return _ServerCpuStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ServerCpuStatusModel {
  @JsonKey(name: 'frames')
  List<CpuUsageFrameModel> get frames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCpuStatusModelCopyWith<ServerCpuStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCpuStatusModelCopyWith<$Res> {
  factory $ServerCpuStatusModelCopyWith(ServerCpuStatusModel value,
          $Res Function(ServerCpuStatusModel) then) =
      _$ServerCpuStatusModelCopyWithImpl<$Res, ServerCpuStatusModel>;
  @useResult
  $Res call({@JsonKey(name: 'frames') List<CpuUsageFrameModel> frames});
}

/// @nodoc
class _$ServerCpuStatusModelCopyWithImpl<$Res,
        $Val extends ServerCpuStatusModel>
    implements $ServerCpuStatusModelCopyWith<$Res> {
  _$ServerCpuStatusModelCopyWithImpl(this._value, this._then);

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
              as List<CpuUsageFrameModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerCpuStatusModelCopyWith<$Res>
    implements $ServerCpuStatusModelCopyWith<$Res> {
  factory _$$_ServerCpuStatusModelCopyWith(_$_ServerCpuStatusModel value,
          $Res Function(_$_ServerCpuStatusModel) then) =
      __$$_ServerCpuStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'frames') List<CpuUsageFrameModel> frames});
}

/// @nodoc
class __$$_ServerCpuStatusModelCopyWithImpl<$Res>
    extends _$ServerCpuStatusModelCopyWithImpl<$Res, _$_ServerCpuStatusModel>
    implements _$$_ServerCpuStatusModelCopyWith<$Res> {
  __$$_ServerCpuStatusModelCopyWithImpl(_$_ServerCpuStatusModel _value,
      $Res Function(_$_ServerCpuStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
  }) {
    return _then(_$_ServerCpuStatusModel(
      frames: null == frames
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<CpuUsageFrameModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerCpuStatusModel extends _ServerCpuStatusModel {
  const _$_ServerCpuStatusModel(
      {@JsonKey(name: 'frames') required final List<CpuUsageFrameModel> frames})
      : _frames = frames,
        super._();

  factory _$_ServerCpuStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerCpuStatusModelFromJson(json);

  final List<CpuUsageFrameModel> _frames;
  @override
  @JsonKey(name: 'frames')
  List<CpuUsageFrameModel> get frames {
    if (_frames is EqualUnmodifiableListView) return _frames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  @override
  String toString() {
    return 'ServerCpuStatusModel(frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerCpuStatusModel &&
            const DeepCollectionEquality().equals(other._frames, _frames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_frames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCpuStatusModelCopyWith<_$_ServerCpuStatusModel> get copyWith =>
      __$$_ServerCpuStatusModelCopyWithImpl<_$_ServerCpuStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerCpuStatusModelToJson(
      this,
    );
  }
}

abstract class _ServerCpuStatusModel extends ServerCpuStatusModel {
  const factory _ServerCpuStatusModel(
          {@JsonKey(name: 'frames')
          required final List<CpuUsageFrameModel> frames}) =
      _$_ServerCpuStatusModel;
  const _ServerCpuStatusModel._() : super._();

  factory _ServerCpuStatusModel.fromJson(Map<String, dynamic> json) =
      _$_ServerCpuStatusModel.fromJson;

  @override
  @JsonKey(name: 'frames')
  List<CpuUsageFrameModel> get frames;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCpuStatusModelCopyWith<_$_ServerCpuStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CpuUsageFrameModel _$CpuUsageFrameModelFromJson(Map<String, dynamic> json) {
  return _CpuUsageFrameModel.fromJson(json);
}

/// @nodoc
mixin _$CpuUsageFrameModel {
  @JsonKey(name: 'cores_usage')
  List<CpuUsageModel> get coresUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuUsageFrameModelCopyWith<CpuUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuUsageFrameModelCopyWith<$Res> {
  factory $CpuUsageFrameModelCopyWith(
          CpuUsageFrameModel value, $Res Function(CpuUsageFrameModel) then) =
      _$CpuUsageFrameModelCopyWithImpl<$Res, CpuUsageFrameModel>;
  @useResult
  $Res call({@JsonKey(name: 'cores_usage') List<CpuUsageModel> coresUsage});
}

/// @nodoc
class _$CpuUsageFrameModelCopyWithImpl<$Res, $Val extends CpuUsageFrameModel>
    implements $CpuUsageFrameModelCopyWith<$Res> {
  _$CpuUsageFrameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coresUsage = null,
  }) {
    return _then(_value.copyWith(
      coresUsage: null == coresUsage
          ? _value.coresUsage
          : coresUsage // ignore: cast_nullable_to_non_nullable
              as List<CpuUsageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CpuUsageFrameModelCopyWith<$Res>
    implements $CpuUsageFrameModelCopyWith<$Res> {
  factory _$$_CpuUsageFrameModelCopyWith(_$_CpuUsageFrameModel value,
          $Res Function(_$_CpuUsageFrameModel) then) =
      __$$_CpuUsageFrameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cores_usage') List<CpuUsageModel> coresUsage});
}

/// @nodoc
class __$$_CpuUsageFrameModelCopyWithImpl<$Res>
    extends _$CpuUsageFrameModelCopyWithImpl<$Res, _$_CpuUsageFrameModel>
    implements _$$_CpuUsageFrameModelCopyWith<$Res> {
  __$$_CpuUsageFrameModelCopyWithImpl(
      _$_CpuUsageFrameModel _value, $Res Function(_$_CpuUsageFrameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coresUsage = null,
  }) {
    return _then(_$_CpuUsageFrameModel(
      coresUsage: null == coresUsage
          ? _value._coresUsage
          : coresUsage // ignore: cast_nullable_to_non_nullable
              as List<CpuUsageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuUsageFrameModel extends _CpuUsageFrameModel {
  const _$_CpuUsageFrameModel(
      {@JsonKey(name: 'cores_usage')
      required final List<CpuUsageModel> coresUsage})
      : _coresUsage = coresUsage,
        super._();

  factory _$_CpuUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuUsageFrameModelFromJson(json);

  final List<CpuUsageModel> _coresUsage;
  @override
  @JsonKey(name: 'cores_usage')
  List<CpuUsageModel> get coresUsage {
    if (_coresUsage is EqualUnmodifiableListView) return _coresUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coresUsage);
  }

  @override
  String toString() {
    return 'CpuUsageFrameModel(coresUsage: $coresUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuUsageFrameModel &&
            const DeepCollectionEquality()
                .equals(other._coresUsage, _coresUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coresUsage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpuUsageFrameModelCopyWith<_$_CpuUsageFrameModel> get copyWith =>
      __$$_CpuUsageFrameModelCopyWithImpl<_$_CpuUsageFrameModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CpuUsageFrameModelToJson(
      this,
    );
  }
}

abstract class _CpuUsageFrameModel extends CpuUsageFrameModel {
  const factory _CpuUsageFrameModel(
      {@JsonKey(name: 'cores_usage')
      required final List<CpuUsageModel> coresUsage}) = _$_CpuUsageFrameModel;
  const _CpuUsageFrameModel._() : super._();

  factory _CpuUsageFrameModel.fromJson(Map<String, dynamic> json) =
      _$_CpuUsageFrameModel.fromJson;

  @override
  @JsonKey(name: 'cores_usage')
  List<CpuUsageModel> get coresUsage;
  @override
  @JsonKey(ignore: true)
  _$$_CpuUsageFrameModelCopyWith<_$_CpuUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CpuUsageModel _$CpuUsageModelFromJson(Map<String, dynamic> json) {
  return _CpuUsageModel.fromJson(json);
}

/// @nodoc
mixin _$CpuUsageModel {
// in GHz
  @JsonKey(name: 'freq')
  double get freq => throw _privateConstructorUsedError;
  @JsonKey(name: 'usage')
  double get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuUsageModelCopyWith<CpuUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuUsageModelCopyWith<$Res> {
  factory $CpuUsageModelCopyWith(
          CpuUsageModel value, $Res Function(CpuUsageModel) then) =
      _$CpuUsageModelCopyWithImpl<$Res, CpuUsageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'freq') double freq,
      @JsonKey(name: 'usage') double usage});
}

/// @nodoc
class _$CpuUsageModelCopyWithImpl<$Res, $Val extends CpuUsageModel>
    implements $CpuUsageModelCopyWith<$Res> {
  _$CpuUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freq = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      freq: null == freq
          ? _value.freq
          : freq // ignore: cast_nullable_to_non_nullable
              as double,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CpuUsageModelCopyWith<$Res>
    implements $CpuUsageModelCopyWith<$Res> {
  factory _$$_CpuUsageModelCopyWith(
          _$_CpuUsageModel value, $Res Function(_$_CpuUsageModel) then) =
      __$$_CpuUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'freq') double freq,
      @JsonKey(name: 'usage') double usage});
}

/// @nodoc
class __$$_CpuUsageModelCopyWithImpl<$Res>
    extends _$CpuUsageModelCopyWithImpl<$Res, _$_CpuUsageModel>
    implements _$$_CpuUsageModelCopyWith<$Res> {
  __$$_CpuUsageModelCopyWithImpl(
      _$_CpuUsageModel _value, $Res Function(_$_CpuUsageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freq = null,
    Object? usage = null,
  }) {
    return _then(_$_CpuUsageModel(
      freq: null == freq
          ? _value.freq
          : freq // ignore: cast_nullable_to_non_nullable
              as double,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuUsageModel extends _CpuUsageModel {
  const _$_CpuUsageModel(
      {@JsonKey(name: 'freq') required this.freq,
      @JsonKey(name: 'usage') required this.usage})
      : super._();

  factory _$_CpuUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuUsageModelFromJson(json);

// in GHz
  @override
  @JsonKey(name: 'freq')
  final double freq;
  @override
  @JsonKey(name: 'usage')
  final double usage;

  @override
  String toString() {
    return 'CpuUsageModel(freq: $freq, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuUsageModel &&
            (identical(other.freq, freq) || other.freq == freq) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, freq, usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpuUsageModelCopyWith<_$_CpuUsageModel> get copyWith =>
      __$$_CpuUsageModelCopyWithImpl<_$_CpuUsageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CpuUsageModelToJson(
      this,
    );
  }
}

abstract class _CpuUsageModel extends CpuUsageModel {
  const factory _CpuUsageModel(
      {@JsonKey(name: 'freq') required final double freq,
      @JsonKey(name: 'usage') required final double usage}) = _$_CpuUsageModel;
  const _CpuUsageModel._() : super._();

  factory _CpuUsageModel.fromJson(Map<String, dynamic> json) =
      _$_CpuUsageModel.fromJson;

  @override // in GHz
  @JsonKey(name: 'freq')
  double get freq;
  @override
  @JsonKey(name: 'usage')
  double get usage;
  @override
  @JsonKey(ignore: true)
  _$$_CpuUsageModelCopyWith<_$_CpuUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
