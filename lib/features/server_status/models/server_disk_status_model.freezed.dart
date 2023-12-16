// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_disk_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerDiskStatusModel _$ServerDiskStatusModelFromJson(
    Map<String, dynamic> json) {
  return _ServerDiskStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ServerDiskStatusModel {
  @JsonKey(name: 'frames')
  List<DiskUsageFrameModel> get frames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerDiskStatusModelCopyWith<ServerDiskStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerDiskStatusModelCopyWith<$Res> {
  factory $ServerDiskStatusModelCopyWith(ServerDiskStatusModel value,
          $Res Function(ServerDiskStatusModel) then) =
      _$ServerDiskStatusModelCopyWithImpl<$Res, ServerDiskStatusModel>;
  @useResult
  $Res call({@JsonKey(name: 'frames') List<DiskUsageFrameModel> frames});
}

/// @nodoc
class _$ServerDiskStatusModelCopyWithImpl<$Res,
        $Val extends ServerDiskStatusModel>
    implements $ServerDiskStatusModelCopyWith<$Res> {
  _$ServerDiskStatusModelCopyWithImpl(this._value, this._then);

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
              as List<DiskUsageFrameModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerDiskStatusModelCopyWith<$Res>
    implements $ServerDiskStatusModelCopyWith<$Res> {
  factory _$$_ServerDiskStatusModelCopyWith(_$_ServerDiskStatusModel value,
          $Res Function(_$_ServerDiskStatusModel) then) =
      __$$_ServerDiskStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'frames') List<DiskUsageFrameModel> frames});
}

/// @nodoc
class __$$_ServerDiskStatusModelCopyWithImpl<$Res>
    extends _$ServerDiskStatusModelCopyWithImpl<$Res, _$_ServerDiskStatusModel>
    implements _$$_ServerDiskStatusModelCopyWith<$Res> {
  __$$_ServerDiskStatusModelCopyWithImpl(_$_ServerDiskStatusModel _value,
      $Res Function(_$_ServerDiskStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frames = null,
  }) {
    return _then(_$_ServerDiskStatusModel(
      frames: null == frames
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<DiskUsageFrameModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerDiskStatusModel extends _ServerDiskStatusModel {
  const _$_ServerDiskStatusModel(
      {@JsonKey(name: 'frames')
      required final List<DiskUsageFrameModel> frames})
      : _frames = frames,
        super._();

  factory _$_ServerDiskStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerDiskStatusModelFromJson(json);

  final List<DiskUsageFrameModel> _frames;
  @override
  @JsonKey(name: 'frames')
  List<DiskUsageFrameModel> get frames {
    if (_frames is EqualUnmodifiableListView) return _frames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  @override
  String toString() {
    return 'ServerDiskStatusModel(frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerDiskStatusModel &&
            const DeepCollectionEquality().equals(other._frames, _frames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_frames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerDiskStatusModelCopyWith<_$_ServerDiskStatusModel> get copyWith =>
      __$$_ServerDiskStatusModelCopyWithImpl<_$_ServerDiskStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerDiskStatusModelToJson(
      this,
    );
  }
}

abstract class _ServerDiskStatusModel extends ServerDiskStatusModel {
  const factory _ServerDiskStatusModel(
          {@JsonKey(name: 'frames')
          required final List<DiskUsageFrameModel> frames}) =
      _$_ServerDiskStatusModel;
  const _ServerDiskStatusModel._() : super._();

  factory _ServerDiskStatusModel.fromJson(Map<String, dynamic> json) =
      _$_ServerDiskStatusModel.fromJson;

  @override
  @JsonKey(name: 'frames')
  List<DiskUsageFrameModel> get frames;
  @override
  @JsonKey(ignore: true)
  _$$_ServerDiskStatusModelCopyWith<_$_ServerDiskStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DiskUsageFrameModel _$DiskUsageFrameModelFromJson(Map<String, dynamic> json) {
  return _DiskUsageFrameModel.fromJson(json);
}

/// @nodoc
mixin _$DiskUsageFrameModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'disks_usage')
  List<DiskUsageModel> get disksUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskUsageFrameModelCopyWith<DiskUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskUsageFrameModelCopyWith<$Res> {
  factory $DiskUsageFrameModelCopyWith(
          DiskUsageFrameModel value, $Res Function(DiskUsageFrameModel) then) =
      _$DiskUsageFrameModelCopyWithImpl<$Res, DiskUsageFrameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'last_check') int lastCheck,
      @JsonKey(name: 'disks_usage') List<DiskUsageModel> disksUsage});
}

/// @nodoc
class _$DiskUsageFrameModelCopyWithImpl<$Res, $Val extends DiskUsageFrameModel>
    implements $DiskUsageFrameModelCopyWith<$Res> {
  _$DiskUsageFrameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastCheck = null,
    Object? disksUsage = null,
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
      disksUsage: null == disksUsage
          ? _value.disksUsage
          : disksUsage // ignore: cast_nullable_to_non_nullable
              as List<DiskUsageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiskUsageFrameModelCopyWith<$Res>
    implements $DiskUsageFrameModelCopyWith<$Res> {
  factory _$$_DiskUsageFrameModelCopyWith(_$_DiskUsageFrameModel value,
          $Res Function(_$_DiskUsageFrameModel) then) =
      __$$_DiskUsageFrameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'last_check') int lastCheck,
      @JsonKey(name: 'disks_usage') List<DiskUsageModel> disksUsage});
}

/// @nodoc
class __$$_DiskUsageFrameModelCopyWithImpl<$Res>
    extends _$DiskUsageFrameModelCopyWithImpl<$Res, _$_DiskUsageFrameModel>
    implements _$$_DiskUsageFrameModelCopyWith<$Res> {
  __$$_DiskUsageFrameModelCopyWithImpl(_$_DiskUsageFrameModel _value,
      $Res Function(_$_DiskUsageFrameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastCheck = null,
    Object? disksUsage = null,
  }) {
    return _then(_$_DiskUsageFrameModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheck: null == lastCheck
          ? _value.lastCheck
          : lastCheck // ignore: cast_nullable_to_non_nullable
              as int,
      disksUsage: null == disksUsage
          ? _value._disksUsage
          : disksUsage // ignore: cast_nullable_to_non_nullable
              as List<DiskUsageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskUsageFrameModel extends _DiskUsageFrameModel {
  const _$_DiskUsageFrameModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'last_check') required this.lastCheck,
      @JsonKey(name: 'disks_usage')
      required final List<DiskUsageModel> disksUsage})
      : _disksUsage = disksUsage,
        super._();

  factory _$_DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskUsageFrameModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'last_check')
  final int lastCheck;
  final List<DiskUsageModel> _disksUsage;
  @override
  @JsonKey(name: 'disks_usage')
  List<DiskUsageModel> get disksUsage {
    if (_disksUsage is EqualUnmodifiableListView) return _disksUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disksUsage);
  }

  @override
  String toString() {
    return 'DiskUsageFrameModel(id: $id, lastCheck: $lastCheck, disksUsage: $disksUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskUsageFrameModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastCheck, lastCheck) ||
                other.lastCheck == lastCheck) &&
            const DeepCollectionEquality()
                .equals(other._disksUsage, _disksUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lastCheck,
      const DeepCollectionEquality().hash(_disksUsage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiskUsageFrameModelCopyWith<_$_DiskUsageFrameModel> get copyWith =>
      __$$_DiskUsageFrameModelCopyWithImpl<_$_DiskUsageFrameModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskUsageFrameModelToJson(
      this,
    );
  }
}

abstract class _DiskUsageFrameModel extends DiskUsageFrameModel {
  const factory _DiskUsageFrameModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'last_check') required final int lastCheck,
      @JsonKey(name: 'disks_usage')
      required final List<DiskUsageModel> disksUsage}) = _$_DiskUsageFrameModel;
  const _DiskUsageFrameModel._() : super._();

  factory _DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =
      _$_DiskUsageFrameModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheck;
  @override
  @JsonKey(name: 'disks_usage')
  List<DiskUsageModel> get disksUsage;
  @override
  @JsonKey(ignore: true)
  _$$_DiskUsageFrameModelCopyWith<_$_DiskUsageFrameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DiskUsageModel _$DiskUsageModelFromJson(Map<String, dynamic> json) {
  return _DiskUsageModel.fromJson(json);
}

/// @nodoc
mixin _$DiskUsageModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'frame_id')
  int get frameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk_id')
  String get diskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  int get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskUsageModelCopyWith<DiskUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskUsageModelCopyWith<$Res> {
  factory $DiskUsageModelCopyWith(
          DiskUsageModel value, $Res Function(DiskUsageModel) then) =
      _$DiskUsageModelCopyWithImpl<$Res, DiskUsageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'frame_id') int frameId,
      @JsonKey(name: 'disk_id') String diskId,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class _$DiskUsageModelCopyWithImpl<$Res, $Val extends DiskUsageModel>
    implements $DiskUsageModelCopyWith<$Res> {
  _$DiskUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frameId = null,
    Object? diskId = null,
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
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiskUsageModelCopyWith<$Res>
    implements $DiskUsageModelCopyWith<$Res> {
  factory _$$_DiskUsageModelCopyWith(
          _$_DiskUsageModel value, $Res Function(_$_DiskUsageModel) then) =
      __$$_DiskUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'frame_id') int frameId,
      @JsonKey(name: 'disk_id') String diskId,
      @JsonKey(name: 'available') int available});
}

/// @nodoc
class __$$_DiskUsageModelCopyWithImpl<$Res>
    extends _$DiskUsageModelCopyWithImpl<$Res, _$_DiskUsageModel>
    implements _$$_DiskUsageModelCopyWith<$Res> {
  __$$_DiskUsageModelCopyWithImpl(
      _$_DiskUsageModel _value, $Res Function(_$_DiskUsageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frameId = null,
    Object? diskId = null,
    Object? available = null,
  }) {
    return _then(_$_DiskUsageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frameId: null == frameId
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as int,
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
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
class _$_DiskUsageModel extends _DiskUsageModel {
  const _$_DiskUsageModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'frame_id') required this.frameId,
      @JsonKey(name: 'disk_id') required this.diskId,
      @JsonKey(name: 'available') required this.available})
      : super._();

  factory _$_DiskUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskUsageModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'frame_id')
  final int frameId;
  @override
  @JsonKey(name: 'disk_id')
  final String diskId;
  @override
  @JsonKey(name: 'available')
  final int available;

  @override
  String toString() {
    return 'DiskUsageModel(id: $id, frameId: $frameId, diskId: $diskId, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskUsageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frameId, frameId) || other.frameId == frameId) &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, frameId, diskId, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiskUsageModelCopyWith<_$_DiskUsageModel> get copyWith =>
      __$$_DiskUsageModelCopyWithImpl<_$_DiskUsageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskUsageModelToJson(
      this,
    );
  }
}

abstract class _DiskUsageModel extends DiskUsageModel {
  const factory _DiskUsageModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'frame_id') required final int frameId,
          @JsonKey(name: 'disk_id') required final String diskId,
          @JsonKey(name: 'available') required final int available}) =
      _$_DiskUsageModel;
  const _DiskUsageModel._() : super._();

  factory _DiskUsageModel.fromJson(Map<String, dynamic> json) =
      _$_DiskUsageModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'frame_id')
  int get frameId;
  @override
  @JsonKey(name: 'disk_id')
  String get diskId;
  @override
  @JsonKey(name: 'available')
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$_DiskUsageModelCopyWith<_$_DiskUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
