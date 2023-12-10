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
  $Res call({@JsonKey(name: 'disks_usage') List<DiskUsageModel> disksUsage});
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
    Object? disksUsage = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({@JsonKey(name: 'disks_usage') List<DiskUsageModel> disksUsage});
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
    Object? disksUsage = null,
  }) {
    return _then(_$_DiskUsageFrameModel(
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
      {@JsonKey(name: 'disks_usage')
      required final List<DiskUsageModel> disksUsage})
      : _disksUsage = disksUsage,
        super._();

  factory _$_DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskUsageFrameModelFromJson(json);

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
    return 'DiskUsageFrameModel(disksUsage: $disksUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskUsageFrameModel &&
            const DeepCollectionEquality()
                .equals(other._disksUsage, _disksUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_disksUsage));

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
      {@JsonKey(name: 'disks_usage')
      required final List<DiskUsageModel> disksUsage}) = _$_DiskUsageFrameModel;
  const _DiskUsageFrameModel._() : super._();

  factory _DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =
      _$_DiskUsageFrameModel.fromJson;

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
  @JsonKey(name: 'total')
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  double get available => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'total') double total,
      @JsonKey(name: 'available') double available});
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
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as double,
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
      {@JsonKey(name: 'total') double total,
      @JsonKey(name: 'available') double available});
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
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_$_DiskUsageModel(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskUsageModel extends _DiskUsageModel {
  const _$_DiskUsageModel(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'available') required this.available})
      : super._();

  factory _$_DiskUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskUsageModelFromJson(json);

  @override
  @JsonKey(name: 'total')
  final double total;
  @override
  @JsonKey(name: 'available')
  final double available;

  @override
  String toString() {
    return 'DiskUsageModel(total: $total, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskUsageModel &&
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
          {@JsonKey(name: 'total') required final double total,
          @JsonKey(name: 'available') required final double available}) =
      _$_DiskUsageModel;
  const _DiskUsageModel._() : super._();

  factory _DiskUsageModel.fromJson(Map<String, dynamic> json) =
      _$_DiskUsageModel.fromJson;

  @override
  @JsonKey(name: 'total')
  double get total;
  @override
  @JsonKey(name: 'available')
  double get available;
  @override
  @JsonKey(ignore: true)
  _$$_DiskUsageModelCopyWith<_$_DiskUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
