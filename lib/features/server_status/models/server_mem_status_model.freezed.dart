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
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'mems_usage')
  List<MemUsageModel> get memsUsage => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'last_check') int lastCheck,
      @JsonKey(name: 'mems_usage') List<MemUsageModel> memsUsage});
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
    Object? id = null,
    Object? lastCheck = null,
    Object? memsUsage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheck: null == lastCheck
          ? _value.lastCheck
          : lastCheck // ignore: cast_nullable_to_non_nullable
              as int,
      memsUsage: null == memsUsage
          ? _value.memsUsage
          : memsUsage // ignore: cast_nullable_to_non_nullable
              as List<MemUsageModel>,
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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'last_check') int lastCheck,
      @JsonKey(name: 'mems_usage') List<MemUsageModel> memsUsage});
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
    Object? id = null,
    Object? lastCheck = null,
    Object? memsUsage = null,
  }) {
    return _then(_$_MemUsageFrameModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheck: null == lastCheck
          ? _value.lastCheck
          : lastCheck // ignore: cast_nullable_to_non_nullable
              as int,
      memsUsage: null == memsUsage
          ? _value._memsUsage
          : memsUsage // ignore: cast_nullable_to_non_nullable
              as List<MemUsageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemUsageFrameModel extends _MemUsageFrameModel {
  const _$_MemUsageFrameModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'last_check') required this.lastCheck,
      @JsonKey(name: 'mems_usage')
      required final List<MemUsageModel> memsUsage})
      : _memsUsage = memsUsage,
        super._();

  factory _$_MemUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemUsageFrameModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'last_check')
  final int lastCheck;
  final List<MemUsageModel> _memsUsage;
  @override
  @JsonKey(name: 'mems_usage')
  List<MemUsageModel> get memsUsage {
    if (_memsUsage is EqualUnmodifiableListView) return _memsUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memsUsage);
  }

  @override
  String toString() {
    return 'MemUsageFrameModel(id: $id, lastCheck: $lastCheck, memsUsage: $memsUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemUsageFrameModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastCheck, lastCheck) ||
                other.lastCheck == lastCheck) &&
            const DeepCollectionEquality()
                .equals(other._memsUsage, _memsUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastCheck,
      const DeepCollectionEquality().hash(_memsUsage));

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
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'last_check') required final int lastCheck,
      @JsonKey(name: 'mems_usage')
      required final List<MemUsageModel> memsUsage}) = _$_MemUsageFrameModel;
  const _MemUsageFrameModel._() : super._();

  factory _MemUsageFrameModel.fromJson(Map<String, dynamic> json) =
      _$_MemUsageFrameModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheck;
  @override
  @JsonKey(name: 'mems_usage')
  List<MemUsageModel> get memsUsage;
  @override
  @JsonKey(ignore: true)
  _$$_MemUsageFrameModelCopyWith<_$_MemUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MemUsageModel _$MemUsageModelFromJson(Map<String, dynamic> json) {
  return _MemUsageModel.fromJson(json);
}

/// @nodoc
mixin _$MemUsageModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'frame_id')
  int get frameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem_id')
  String get memId => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  int get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemUsageModelCopyWith<MemUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemUsageModelCopyWith<$Res> {
  factory $MemUsageModelCopyWith(
          MemUsageModel value, $Res Function(MemUsageModel) then) =
      _$MemUsageModelCopyWithImpl<$Res, MemUsageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'frame_id') int frameId,
      @JsonKey(name: 'mem_id') String memId,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class _$MemUsageModelCopyWithImpl<$Res, $Val extends MemUsageModel>
    implements $MemUsageModelCopyWith<$Res> {
  _$MemUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frameId = null,
    Object? memId = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frameId: null == frameId
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as int,
      memId: null == memId
          ? _value.memId
          : memId // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemUsageModelCopyWith<$Res>
    implements $MemUsageModelCopyWith<$Res> {
  factory _$$_MemUsageModelCopyWith(
          _$_MemUsageModel value, $Res Function(_$_MemUsageModel) then) =
      __$$_MemUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'frame_id') int frameId,
      @JsonKey(name: 'mem_id') String memId,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class __$$_MemUsageModelCopyWithImpl<$Res>
    extends _$MemUsageModelCopyWithImpl<$Res, _$_MemUsageModel>
    implements _$$_MemUsageModelCopyWith<$Res> {
  __$$_MemUsageModelCopyWithImpl(
      _$_MemUsageModel _value, $Res Function(_$_MemUsageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frameId = null,
    Object? memId = null,
    Object? available = null,
  }) {
    return _then(_$_MemUsageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frameId: null == frameId
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as int,
      memId: null == memId
          ? _value.memId
          : memId // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemUsageModel extends _MemUsageModel {
  const _$_MemUsageModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'frame_id') required this.frameId,
      @JsonKey(name: 'mem_id') required this.memId,
      @JsonKey(name: 'available') required this.available})
      : super._();

  factory _$_MemUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemUsageModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'frame_id')
  final int frameId;
  @override
  @JsonKey(name: 'mem_id')
  final String memId;
  @override
  @JsonKey(name: 'available')
  final int available;

  @override
  String toString() {
    return 'MemUsageModel(id: $id, frameId: $frameId, memId: $memId, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemUsageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frameId, frameId) || other.frameId == frameId) &&
            (identical(other.memId, memId) || other.memId == memId) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, frameId, memId, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemUsageModelCopyWith<_$_MemUsageModel> get copyWith =>
      __$$_MemUsageModelCopyWithImpl<_$_MemUsageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemUsageModelToJson(
      this,
    );
  }
}

abstract class _MemUsageModel extends MemUsageModel {
  const factory _MemUsageModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'frame_id') required final int frameId,
          @JsonKey(name: 'mem_id') required final String memId,
          @JsonKey(name: 'available') required final int available}) =
      _$_MemUsageModel;
  const _MemUsageModel._() : super._();

  factory _MemUsageModel.fromJson(Map<String, dynamic> json) =
      _$_MemUsageModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'frame_id')
  int get frameId;
  @override
  @JsonKey(name: 'mem_id')
  String get memId;
  @override
  @JsonKey(name: 'available')
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$_MemUsageModelCopyWith<_$_MemUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
