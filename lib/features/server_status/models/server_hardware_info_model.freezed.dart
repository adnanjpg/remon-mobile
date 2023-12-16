// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_hardware_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerHardwareInfoModel _$ServerHardwareInfoModelFromJson(
    Map<String, dynamic> json) {
  return _ServerHardwareInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ServerHardwareInfoModel {
  @JsonKey(name: 'cpu_info')
  List<CpuInfoModel> get cpuInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem_info')
  List<MemInfoModel> get memInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerHardwareInfoModelCopyWith<ServerHardwareInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerHardwareInfoModelCopyWith<$Res> {
  factory $ServerHardwareInfoModelCopyWith(ServerHardwareInfoModel value,
          $Res Function(ServerHardwareInfoModel) then) =
      _$ServerHardwareInfoModelCopyWithImpl<$Res, ServerHardwareInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_info') List<CpuInfoModel> cpuInfo,
      @JsonKey(name: 'disks_info') List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'mem_info') List<MemInfoModel> memInfo});
}

/// @nodoc
class _$ServerHardwareInfoModelCopyWithImpl<$Res,
        $Val extends ServerHardwareInfoModel>
    implements $ServerHardwareInfoModelCopyWith<$Res> {
  _$ServerHardwareInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuInfo = null,
    Object? disksInfo = null,
    Object? memInfo = null,
  }) {
    return _then(_value.copyWith(
      cpuInfo: null == cpuInfo
          ? _value.cpuInfo
          : cpuInfo // ignore: cast_nullable_to_non_nullable
              as List<CpuInfoModel>,
      disksInfo: null == disksInfo
          ? _value.disksInfo
          : disksInfo // ignore: cast_nullable_to_non_nullable
              as List<DiskInfoModel>,
      memInfo: null == memInfo
          ? _value.memInfo
          : memInfo // ignore: cast_nullable_to_non_nullable
              as List<MemInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerHardwareInfoModelCopyWith<$Res>
    implements $ServerHardwareInfoModelCopyWith<$Res> {
  factory _$$_ServerHardwareInfoModelCopyWith(_$_ServerHardwareInfoModel value,
          $Res Function(_$_ServerHardwareInfoModel) then) =
      __$$_ServerHardwareInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_info') List<CpuInfoModel> cpuInfo,
      @JsonKey(name: 'disks_info') List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'mem_info') List<MemInfoModel> memInfo});
}

/// @nodoc
class __$$_ServerHardwareInfoModelCopyWithImpl<$Res>
    extends _$ServerHardwareInfoModelCopyWithImpl<$Res,
        _$_ServerHardwareInfoModel>
    implements _$$_ServerHardwareInfoModelCopyWith<$Res> {
  __$$_ServerHardwareInfoModelCopyWithImpl(_$_ServerHardwareInfoModel _value,
      $Res Function(_$_ServerHardwareInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuInfo = null,
    Object? disksInfo = null,
    Object? memInfo = null,
  }) {
    return _then(_$_ServerHardwareInfoModel(
      cpuInfo: null == cpuInfo
          ? _value._cpuInfo
          : cpuInfo // ignore: cast_nullable_to_non_nullable
              as List<CpuInfoModel>,
      disksInfo: null == disksInfo
          ? _value._disksInfo
          : disksInfo // ignore: cast_nullable_to_non_nullable
              as List<DiskInfoModel>,
      memInfo: null == memInfo
          ? _value._memInfo
          : memInfo // ignore: cast_nullable_to_non_nullable
              as List<MemInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerHardwareInfoModel extends _ServerHardwareInfoModel {
  const _$_ServerHardwareInfoModel(
      {@JsonKey(name: 'cpu_info') required final List<CpuInfoModel> cpuInfo,
      @JsonKey(name: 'disks_info') required final List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'mem_info') required final List<MemInfoModel> memInfo})
      : _cpuInfo = cpuInfo,
        _disksInfo = disksInfo,
        _memInfo = memInfo,
        super._();

  factory _$_ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerHardwareInfoModelFromJson(json);

  final List<CpuInfoModel> _cpuInfo;
  @override
  @JsonKey(name: 'cpu_info')
  List<CpuInfoModel> get cpuInfo {
    if (_cpuInfo is EqualUnmodifiableListView) return _cpuInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cpuInfo);
  }

  final List<DiskInfoModel> _disksInfo;
  @override
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo {
    if (_disksInfo is EqualUnmodifiableListView) return _disksInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disksInfo);
  }

  final List<MemInfoModel> _memInfo;
  @override
  @JsonKey(name: 'mem_info')
  List<MemInfoModel> get memInfo {
    if (_memInfo is EqualUnmodifiableListView) return _memInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memInfo);
  }

  @override
  String toString() {
    return 'ServerHardwareInfoModel(cpuInfo: $cpuInfo, disksInfo: $disksInfo, memInfo: $memInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerHardwareInfoModel &&
            const DeepCollectionEquality().equals(other._cpuInfo, _cpuInfo) &&
            const DeepCollectionEquality()
                .equals(other._disksInfo, _disksInfo) &&
            const DeepCollectionEquality().equals(other._memInfo, _memInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cpuInfo),
      const DeepCollectionEquality().hash(_disksInfo),
      const DeepCollectionEquality().hash(_memInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerHardwareInfoModelCopyWith<_$_ServerHardwareInfoModel>
      get copyWith =>
          __$$_ServerHardwareInfoModelCopyWithImpl<_$_ServerHardwareInfoModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerHardwareInfoModelToJson(
      this,
    );
  }
}

abstract class _ServerHardwareInfoModel extends ServerHardwareInfoModel {
  const factory _ServerHardwareInfoModel(
      {@JsonKey(name: 'cpu_info') required final List<CpuInfoModel> cpuInfo,
      @JsonKey(name: 'disks_info') required final List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'mem_info')
      required final List<MemInfoModel> memInfo}) = _$_ServerHardwareInfoModel;
  const _ServerHardwareInfoModel._() : super._();

  factory _ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ServerHardwareInfoModel.fromJson;

  @override
  @JsonKey(name: 'cpu_info')
  List<CpuInfoModel> get cpuInfo;
  @override
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo;
  @override
  @JsonKey(name: 'mem_info')
  List<MemInfoModel> get memInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ServerHardwareInfoModelCopyWith<_$_ServerHardwareInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

CpuInfoModel _$CpuInfoModelFromJson(Map<String, dynamic> json) {
  return _CpuInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CpuInfoModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpu_id')
  String get cpuId => throw _privateConstructorUsedError;
  @JsonKey(name: 'core_count')
  int get coreCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  String get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheckInt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuInfoModelCopyWith<CpuInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuInfoModelCopyWith<$Res> {
  factory $CpuInfoModelCopyWith(
          CpuInfoModel value, $Res Function(CpuInfoModel) then) =
      _$CpuInfoModelCopyWithImpl<$Res, CpuInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cpu_id') String cpuId,
      @JsonKey(name: 'core_count') int coreCount,
      @JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class _$CpuInfoModelCopyWithImpl<$Res, $Val extends CpuInfoModel>
    implements $CpuInfoModelCopyWith<$Res> {
  _$CpuInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cpuId = null,
    Object? coreCount = null,
    Object? vendorId = null,
    Object? brand = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cpuId: null == cpuId
          ? _value.cpuId
          : cpuId // ignore: cast_nullable_to_non_nullable
              as String,
      coreCount: null == coreCount
          ? _value.coreCount
          : coreCount // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CpuInfoModelCopyWith<$Res>
    implements $CpuInfoModelCopyWith<$Res> {
  factory _$$_CpuInfoModelCopyWith(
          _$_CpuInfoModel value, $Res Function(_$_CpuInfoModel) then) =
      __$$_CpuInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'cpu_id') String cpuId,
      @JsonKey(name: 'core_count') int coreCount,
      @JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class __$$_CpuInfoModelCopyWithImpl<$Res>
    extends _$CpuInfoModelCopyWithImpl<$Res, _$_CpuInfoModel>
    implements _$$_CpuInfoModelCopyWith<$Res> {
  __$$_CpuInfoModelCopyWithImpl(
      _$_CpuInfoModel _value, $Res Function(_$_CpuInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cpuId = null,
    Object? coreCount = null,
    Object? vendorId = null,
    Object? brand = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_$_CpuInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cpuId: null == cpuId
          ? _value.cpuId
          : cpuId // ignore: cast_nullable_to_non_nullable
              as String,
      coreCount: null == coreCount
          ? _value.coreCount
          : coreCount // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuInfoModel extends _CpuInfoModel {
  const _$_CpuInfoModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'cpu_id') required this.cpuId,
      @JsonKey(name: 'core_count') required this.coreCount,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'brand') required this.brand,
      @JsonKey(name: 'last_check') required this.lastCheckInt})
      : super._();

  factory _$_CpuInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuInfoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'cpu_id')
  final String cpuId;
  @override
  @JsonKey(name: 'core_count')
  final int coreCount;
  @override
  @JsonKey(name: 'vendor_id')
  final String vendorId;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'last_check')
  final int lastCheckInt;

  @override
  String toString() {
    return 'CpuInfoModel(id: $id, cpuId: $cpuId, coreCount: $coreCount, vendorId: $vendorId, brand: $brand, lastCheckInt: $lastCheckInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cpuId, cpuId) || other.cpuId == cpuId) &&
            (identical(other.coreCount, coreCount) ||
                other.coreCount == coreCount) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.lastCheckInt, lastCheckInt) ||
                other.lastCheckInt == lastCheckInt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cpuId, coreCount, vendorId, brand, lastCheckInt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpuInfoModelCopyWith<_$_CpuInfoModel> get copyWith =>
      __$$_CpuInfoModelCopyWithImpl<_$_CpuInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CpuInfoModelToJson(
      this,
    );
  }
}

abstract class _CpuInfoModel extends CpuInfoModel {
  const factory _CpuInfoModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'cpu_id') required final String cpuId,
          @JsonKey(name: 'core_count') required final int coreCount,
          @JsonKey(name: 'vendor_id') required final String vendorId,
          @JsonKey(name: 'brand') required final String brand,
          @JsonKey(name: 'last_check') required final int lastCheckInt}) =
      _$_CpuInfoModel;
  const _CpuInfoModel._() : super._();

  factory _CpuInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CpuInfoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'cpu_id')
  String get cpuId;
  @override
  @JsonKey(name: 'core_count')
  int get coreCount;
  @override
  @JsonKey(name: 'vendor_id')
  String get vendorId;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheckInt;
  @override
  @JsonKey(ignore: true)
  _$$_CpuInfoModelCopyWith<_$_CpuInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DiskInfoModel _$DiskInfoModelFromJson(Map<String, dynamic> json) {
  return _DiskInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DiskInfoModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk_id')
  String get diskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fs_type')
  String get fsType => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_removable')
  bool get isRemovable => throw _privateConstructorUsedError;
  @JsonKey(name: 'mount_point')
  String get mountPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_space')
  int get totalSpace => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheckInt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskInfoModelCopyWith<DiskInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskInfoModelCopyWith<$Res> {
  factory $DiskInfoModelCopyWith(
          DiskInfoModel value, $Res Function(DiskInfoModel) then) =
      _$DiskInfoModelCopyWithImpl<$Res, DiskInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'disk_id') String diskId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'fs_type') String fsType,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'is_removable') bool isRemovable,
      @JsonKey(name: 'mount_point') String mountPoint,
      @JsonKey(name: 'total_space') int totalSpace,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class _$DiskInfoModelCopyWithImpl<$Res, $Val extends DiskInfoModel>
    implements $DiskInfoModelCopyWith<$Res> {
  _$DiskInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? diskId = null,
    Object? name = null,
    Object? fsType = null,
    Object? kind = null,
    Object? isRemovable = null,
    Object? mountPoint = null,
    Object? totalSpace = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fsType: null == fsType
          ? _value.fsType
          : fsType // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      isRemovable: null == isRemovable
          ? _value.isRemovable
          : isRemovable // ignore: cast_nullable_to_non_nullable
              as bool,
      mountPoint: null == mountPoint
          ? _value.mountPoint
          : mountPoint // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpace: null == totalSpace
          ? _value.totalSpace
          : totalSpace // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiskInfoModelCopyWith<$Res>
    implements $DiskInfoModelCopyWith<$Res> {
  factory _$$_DiskInfoModelCopyWith(
          _$_DiskInfoModel value, $Res Function(_$_DiskInfoModel) then) =
      __$$_DiskInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'disk_id') String diskId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'fs_type') String fsType,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'is_removable') bool isRemovable,
      @JsonKey(name: 'mount_point') String mountPoint,
      @JsonKey(name: 'total_space') int totalSpace,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class __$$_DiskInfoModelCopyWithImpl<$Res>
    extends _$DiskInfoModelCopyWithImpl<$Res, _$_DiskInfoModel>
    implements _$$_DiskInfoModelCopyWith<$Res> {
  __$$_DiskInfoModelCopyWithImpl(
      _$_DiskInfoModel _value, $Res Function(_$_DiskInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? diskId = null,
    Object? name = null,
    Object? fsType = null,
    Object? kind = null,
    Object? isRemovable = null,
    Object? mountPoint = null,
    Object? totalSpace = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_$_DiskInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      diskId: null == diskId
          ? _value.diskId
          : diskId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fsType: null == fsType
          ? _value.fsType
          : fsType // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      isRemovable: null == isRemovable
          ? _value.isRemovable
          : isRemovable // ignore: cast_nullable_to_non_nullable
              as bool,
      mountPoint: null == mountPoint
          ? _value.mountPoint
          : mountPoint // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpace: null == totalSpace
          ? _value.totalSpace
          : totalSpace // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskInfoModel extends _DiskInfoModel {
  const _$_DiskInfoModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'disk_id') required this.diskId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'fs_type') required this.fsType,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'is_removable') required this.isRemovable,
      @JsonKey(name: 'mount_point') required this.mountPoint,
      @JsonKey(name: 'total_space') required this.totalSpace,
      @JsonKey(name: 'last_check') required this.lastCheckInt})
      : super._();

  factory _$_DiskInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskInfoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'disk_id')
  final String diskId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'fs_type')
  final String fsType;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'is_removable')
  final bool isRemovable;
  @override
  @JsonKey(name: 'mount_point')
  final String mountPoint;
  @override
  @JsonKey(name: 'total_space')
  final int totalSpace;
  @override
  @JsonKey(name: 'last_check')
  final int lastCheckInt;

  @override
  String toString() {
    return 'DiskInfoModel(id: $id, diskId: $diskId, name: $name, fsType: $fsType, kind: $kind, isRemovable: $isRemovable, mountPoint: $mountPoint, totalSpace: $totalSpace, lastCheckInt: $lastCheckInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.diskId, diskId) || other.diskId == diskId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fsType, fsType) || other.fsType == fsType) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.isRemovable, isRemovable) ||
                other.isRemovable == isRemovable) &&
            (identical(other.mountPoint, mountPoint) ||
                other.mountPoint == mountPoint) &&
            (identical(other.totalSpace, totalSpace) ||
                other.totalSpace == totalSpace) &&
            (identical(other.lastCheckInt, lastCheckInt) ||
                other.lastCheckInt == lastCheckInt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, diskId, name, fsType, kind,
      isRemovable, mountPoint, totalSpace, lastCheckInt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiskInfoModelCopyWith<_$_DiskInfoModel> get copyWith =>
      __$$_DiskInfoModelCopyWithImpl<_$_DiskInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskInfoModelToJson(
      this,
    );
  }
}

abstract class _DiskInfoModel extends DiskInfoModel {
  const factory _DiskInfoModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'disk_id') required final String diskId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'fs_type') required final String fsType,
          @JsonKey(name: 'kind') required final String kind,
          @JsonKey(name: 'is_removable') required final bool isRemovable,
          @JsonKey(name: 'mount_point') required final String mountPoint,
          @JsonKey(name: 'total_space') required final int totalSpace,
          @JsonKey(name: 'last_check') required final int lastCheckInt}) =
      _$_DiskInfoModel;
  const _DiskInfoModel._() : super._();

  factory _DiskInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DiskInfoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'disk_id')
  String get diskId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'fs_type')
  String get fsType;
  @override
  @JsonKey(name: 'kind')
  String get kind;
  @override
  @JsonKey(name: 'is_removable')
  bool get isRemovable;
  @override
  @JsonKey(name: 'mount_point')
  String get mountPoint;
  @override
  @JsonKey(name: 'total_space')
  int get totalSpace;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheckInt;
  @override
  @JsonKey(ignore: true)
  _$$_DiskInfoModelCopyWith<_$_DiskInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MemInfoModel _$MemInfoModelFromJson(Map<String, dynamic> json) {
  return _MemInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MemInfoModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem_id')
  String get memId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_space')
  int get totalSpace => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheckInt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemInfoModelCopyWith<MemInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemInfoModelCopyWith<$Res> {
  factory $MemInfoModelCopyWith(
          MemInfoModel value, $Res Function(MemInfoModel) then) =
      _$MemInfoModelCopyWithImpl<$Res, MemInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'mem_id') String memId,
      @JsonKey(name: 'total_space') int totalSpace,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class _$MemInfoModelCopyWithImpl<$Res, $Val extends MemInfoModel>
    implements $MemInfoModelCopyWith<$Res> {
  _$MemInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memId = null,
    Object? totalSpace = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memId: null == memId
          ? _value.memId
          : memId // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpace: null == totalSpace
          ? _value.totalSpace
          : totalSpace // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemInfoModelCopyWith<$Res>
    implements $MemInfoModelCopyWith<$Res> {
  factory _$$_MemInfoModelCopyWith(
          _$_MemInfoModel value, $Res Function(_$_MemInfoModel) then) =
      __$$_MemInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'mem_id') String memId,
      @JsonKey(name: 'total_space') int totalSpace,
      @JsonKey(name: 'last_check') int lastCheckInt});
}

/// @nodoc
class __$$_MemInfoModelCopyWithImpl<$Res>
    extends _$MemInfoModelCopyWithImpl<$Res, _$_MemInfoModel>
    implements _$$_MemInfoModelCopyWith<$Res> {
  __$$_MemInfoModelCopyWithImpl(
      _$_MemInfoModel _value, $Res Function(_$_MemInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memId = null,
    Object? totalSpace = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_$_MemInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memId: null == memId
          ? _value.memId
          : memId // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpace: null == totalSpace
          ? _value.totalSpace
          : totalSpace // ignore: cast_nullable_to_non_nullable
              as int,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemInfoModel extends _MemInfoModel {
  const _$_MemInfoModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'mem_id') required this.memId,
      @JsonKey(name: 'total_space') required this.totalSpace,
      @JsonKey(name: 'last_check') required this.lastCheckInt})
      : super._();

  factory _$_MemInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemInfoModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'mem_id')
  final String memId;
  @override
  @JsonKey(name: 'total_space')
  final int totalSpace;
  @override
  @JsonKey(name: 'last_check')
  final int lastCheckInt;

  @override
  String toString() {
    return 'MemInfoModel(id: $id, memId: $memId, totalSpace: $totalSpace, lastCheckInt: $lastCheckInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memId, memId) || other.memId == memId) &&
            (identical(other.totalSpace, totalSpace) ||
                other.totalSpace == totalSpace) &&
            (identical(other.lastCheckInt, lastCheckInt) ||
                other.lastCheckInt == lastCheckInt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memId, totalSpace, lastCheckInt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemInfoModelCopyWith<_$_MemInfoModel> get copyWith =>
      __$$_MemInfoModelCopyWithImpl<_$_MemInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemInfoModelToJson(
      this,
    );
  }
}

abstract class _MemInfoModel extends MemInfoModel {
  const factory _MemInfoModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'mem_id') required final String memId,
          @JsonKey(name: 'total_space') required final int totalSpace,
          @JsonKey(name: 'last_check') required final int lastCheckInt}) =
      _$_MemInfoModel;
  const _MemInfoModel._() : super._();

  factory _MemInfoModel.fromJson(Map<String, dynamic> json) =
      _$_MemInfoModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'mem_id')
  String get memId;
  @override
  @JsonKey(name: 'total_space')
  int get totalSpace;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheckInt;
  @override
  @JsonKey(ignore: true)
  _$$_MemInfoModelCopyWith<_$_MemInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
