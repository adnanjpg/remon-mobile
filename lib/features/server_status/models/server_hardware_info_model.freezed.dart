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
  CpuInfoModel get cpuInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheckInt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'cpu_info') CpuInfoModel cpuInfo,
      @JsonKey(name: 'disks_info') List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'last_check') int lastCheckInt});

  $CpuInfoModelCopyWith<$Res> get cpuInfo;
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
    Object? lastCheckInt = null,
  }) {
    return _then(_value.copyWith(
      cpuInfo: null == cpuInfo
          ? _value.cpuInfo
          : cpuInfo // ignore: cast_nullable_to_non_nullable
              as CpuInfoModel,
      disksInfo: null == disksInfo
          ? _value.disksInfo
          : disksInfo // ignore: cast_nullable_to_non_nullable
              as List<DiskInfoModel>,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuInfoModelCopyWith<$Res> get cpuInfo {
    return $CpuInfoModelCopyWith<$Res>(_value.cpuInfo, (value) {
      return _then(_value.copyWith(cpuInfo: value) as $Val);
    });
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
      {@JsonKey(name: 'cpu_info') CpuInfoModel cpuInfo,
      @JsonKey(name: 'disks_info') List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'last_check') int lastCheckInt});

  @override
  $CpuInfoModelCopyWith<$Res> get cpuInfo;
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
    Object? lastCheckInt = null,
  }) {
    return _then(_$_ServerHardwareInfoModel(
      cpuInfo: null == cpuInfo
          ? _value.cpuInfo
          : cpuInfo // ignore: cast_nullable_to_non_nullable
              as CpuInfoModel,
      disksInfo: null == disksInfo
          ? _value._disksInfo
          : disksInfo // ignore: cast_nullable_to_non_nullable
              as List<DiskInfoModel>,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerHardwareInfoModel extends _ServerHardwareInfoModel {
  const _$_ServerHardwareInfoModel(
      {@JsonKey(name: 'cpu_info') required this.cpuInfo,
      @JsonKey(name: 'disks_info') required final List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'last_check') required this.lastCheckInt})
      : _disksInfo = disksInfo,
        super._();

  factory _$_ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerHardwareInfoModelFromJson(json);

  @override
  @JsonKey(name: 'cpu_info')
  final CpuInfoModel cpuInfo;
  final List<DiskInfoModel> _disksInfo;
  @override
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo {
    if (_disksInfo is EqualUnmodifiableListView) return _disksInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disksInfo);
  }

  @override
  @JsonKey(name: 'last_check')
  final int lastCheckInt;

  @override
  String toString() {
    return 'ServerHardwareInfoModel(cpuInfo: $cpuInfo, disksInfo: $disksInfo, lastCheckInt: $lastCheckInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerHardwareInfoModel &&
            (identical(other.cpuInfo, cpuInfo) || other.cpuInfo == cpuInfo) &&
            const DeepCollectionEquality()
                .equals(other._disksInfo, _disksInfo) &&
            (identical(other.lastCheckInt, lastCheckInt) ||
                other.lastCheckInt == lastCheckInt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cpuInfo,
      const DeepCollectionEquality().hash(_disksInfo), lastCheckInt);

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
      {@JsonKey(name: 'cpu_info') required final CpuInfoModel cpuInfo,
      @JsonKey(name: 'disks_info') required final List<DiskInfoModel> disksInfo,
      @JsonKey(name: 'last_check')
      required final int lastCheckInt}) = _$_ServerHardwareInfoModel;
  const _ServerHardwareInfoModel._() : super._();

  factory _ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ServerHardwareInfoModel.fromJson;

  @override
  @JsonKey(name: 'cpu_info')
  CpuInfoModel get cpuInfo;
  @override
  @JsonKey(name: 'disks_info')
  List<DiskInfoModel> get disksInfo;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheckInt;
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
  @JsonKey(name: 'vendor_id')
  String get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'brand') String brand});
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
    Object? vendorId = null,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'brand') String brand});
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
    Object? vendorId = null,
    Object? brand = null,
  }) {
    return _then(_$_CpuInfoModel(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuInfoModel extends _CpuInfoModel {
  const _$_CpuInfoModel(
      {@JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'brand') required this.brand})
      : super._();

  factory _$_CpuInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuInfoModelFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final String vendorId;
  @override
  @JsonKey(name: 'brand')
  final String brand;

  @override
  String toString() {
    return 'CpuInfoModel(vendorId: $vendorId, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuInfoModel &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, brand);

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
      {@JsonKey(name: 'vendor_id') required final String vendorId,
      @JsonKey(name: 'brand') required final String brand}) = _$_CpuInfoModel;
  const _CpuInfoModel._() : super._();

  factory _CpuInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CpuInfoModel.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  String get vendorId;
  @override
  @JsonKey(name: 'brand')
  String get brand;
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
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'name') String name});
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
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({@JsonKey(name: 'name') String name});
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
    Object? name = null,
  }) {
    return _then(_$_DiskInfoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskInfoModel extends _DiskInfoModel {
  const _$_DiskInfoModel({@JsonKey(name: 'name') required this.name})
      : super._();

  factory _$_DiskInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskInfoModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'DiskInfoModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskInfoModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

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
      {@JsonKey(name: 'name') required final String name}) = _$_DiskInfoModel;
  const _DiskInfoModel._() : super._();

  factory _DiskInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DiskInfoModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DiskInfoModelCopyWith<_$_DiskInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
