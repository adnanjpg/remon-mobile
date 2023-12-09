// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerStatusModel _$ServerStatusModelFromJson(Map<String, dynamic> json) {
  return _ServerStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ServerStatusModel {
  @JsonKey(name: 'cpu_usage')
  CpuUsageModel get cpuUsageItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem_usage')
  MemUsageModel get memUsage => throw _privateConstructorUsedError;
  @JsonKey(name: 'storage_usage')
  List<StorageUsageModel> get storageUsage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'last_check')
  int get lastCheckInt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerStatusModelCopyWith<ServerStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerStatusModelCopyWith<$Res> {
  factory $ServerStatusModelCopyWith(
          ServerStatusModel value, $Res Function(ServerStatusModel) then) =
      _$ServerStatusModelCopyWithImpl<$Res, ServerStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_usage') CpuUsageModel cpuUsageItems,
      @JsonKey(name: 'mem_usage') MemUsageModel memUsage,
      @JsonKey(name: 'storage_usage') List<StorageUsageModel> storageUsage,
      @JsonKey(name: 'last_check') int lastCheckInt});

  $CpuUsageModelCopyWith<$Res> get cpuUsageItems;
  $MemUsageModelCopyWith<$Res> get memUsage;
}

/// @nodoc
class _$ServerStatusModelCopyWithImpl<$Res, $Val extends ServerStatusModel>
    implements $ServerStatusModelCopyWith<$Res> {
  _$ServerStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsageItems = null,
    Object? memUsage = null,
    Object? storageUsage = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_value.copyWith(
      cpuUsageItems: null == cpuUsageItems
          ? _value.cpuUsageItems
          : cpuUsageItems // ignore: cast_nullable_to_non_nullable
              as CpuUsageModel,
      memUsage: null == memUsage
          ? _value.memUsage
          : memUsage // ignore: cast_nullable_to_non_nullable
              as MemUsageModel,
      storageUsage: null == storageUsage
          ? _value.storageUsage
          : storageUsage // ignore: cast_nullable_to_non_nullable
              as List<StorageUsageModel>,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuUsageModelCopyWith<$Res> get cpuUsageItems {
    return $CpuUsageModelCopyWith<$Res>(_value.cpuUsageItems, (value) {
      return _then(_value.copyWith(cpuUsageItems: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MemUsageModelCopyWith<$Res> get memUsage {
    return $MemUsageModelCopyWith<$Res>(_value.memUsage, (value) {
      return _then(_value.copyWith(memUsage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServerStatusModelCopyWith<$Res>
    implements $ServerStatusModelCopyWith<$Res> {
  factory _$$_ServerStatusModelCopyWith(_$_ServerStatusModel value,
          $Res Function(_$_ServerStatusModel) then) =
      __$$_ServerStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_usage') CpuUsageModel cpuUsageItems,
      @JsonKey(name: 'mem_usage') MemUsageModel memUsage,
      @JsonKey(name: 'storage_usage') List<StorageUsageModel> storageUsage,
      @JsonKey(name: 'last_check') int lastCheckInt});

  @override
  $CpuUsageModelCopyWith<$Res> get cpuUsageItems;
  @override
  $MemUsageModelCopyWith<$Res> get memUsage;
}

/// @nodoc
class __$$_ServerStatusModelCopyWithImpl<$Res>
    extends _$ServerStatusModelCopyWithImpl<$Res, _$_ServerStatusModel>
    implements _$$_ServerStatusModelCopyWith<$Res> {
  __$$_ServerStatusModelCopyWithImpl(
      _$_ServerStatusModel _value, $Res Function(_$_ServerStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsageItems = null,
    Object? memUsage = null,
    Object? storageUsage = null,
    Object? lastCheckInt = null,
  }) {
    return _then(_$_ServerStatusModel(
      cpuUsageItems: null == cpuUsageItems
          ? _value.cpuUsageItems
          : cpuUsageItems // ignore: cast_nullable_to_non_nullable
              as CpuUsageModel,
      memUsage: null == memUsage
          ? _value.memUsage
          : memUsage // ignore: cast_nullable_to_non_nullable
              as MemUsageModel,
      storageUsage: null == storageUsage
          ? _value._storageUsage
          : storageUsage // ignore: cast_nullable_to_non_nullable
              as List<StorageUsageModel>,
      lastCheckInt: null == lastCheckInt
          ? _value.lastCheckInt
          : lastCheckInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerStatusModel extends _ServerStatusModel {
  const _$_ServerStatusModel(
      {@JsonKey(name: 'cpu_usage') required this.cpuUsageItems,
      @JsonKey(name: 'mem_usage') required this.memUsage,
      @JsonKey(name: 'storage_usage')
      required final List<StorageUsageModel> storageUsage,
      @JsonKey(name: 'last_check') required this.lastCheckInt})
      : _storageUsage = storageUsage,
        super._();

  factory _$_ServerStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServerStatusModelFromJson(json);

  @override
  @JsonKey(name: 'cpu_usage')
  final CpuUsageModel cpuUsageItems;
  @override
  @JsonKey(name: 'mem_usage')
  final MemUsageModel memUsage;
  final List<StorageUsageModel> _storageUsage;
  @override
  @JsonKey(name: 'storage_usage')
  List<StorageUsageModel> get storageUsage {
    if (_storageUsage is EqualUnmodifiableListView) return _storageUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storageUsage);
  }

  @override
  @JsonKey(name: 'last_check')
  final int lastCheckInt;

  @override
  String toString() {
    return 'ServerStatusModel(cpuUsageItems: $cpuUsageItems, memUsage: $memUsage, storageUsage: $storageUsage, lastCheckInt: $lastCheckInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerStatusModel &&
            (identical(other.cpuUsageItems, cpuUsageItems) ||
                other.cpuUsageItems == cpuUsageItems) &&
            (identical(other.memUsage, memUsage) ||
                other.memUsage == memUsage) &&
            const DeepCollectionEquality()
                .equals(other._storageUsage, _storageUsage) &&
            (identical(other.lastCheckInt, lastCheckInt) ||
                other.lastCheckInt == lastCheckInt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cpuUsageItems, memUsage,
      const DeepCollectionEquality().hash(_storageUsage), lastCheckInt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerStatusModelCopyWith<_$_ServerStatusModel> get copyWith =>
      __$$_ServerStatusModelCopyWithImpl<_$_ServerStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerStatusModelToJson(
      this,
    );
  }
}

abstract class _ServerStatusModel extends ServerStatusModel {
  const factory _ServerStatusModel(
      {@JsonKey(name: 'cpu_usage') required final CpuUsageModel cpuUsageItems,
      @JsonKey(name: 'mem_usage') required final MemUsageModel memUsage,
      @JsonKey(name: 'storage_usage')
      required final List<StorageUsageModel> storageUsage,
      @JsonKey(name: 'last_check')
      required final int lastCheckInt}) = _$_ServerStatusModel;
  const _ServerStatusModel._() : super._();

  factory _ServerStatusModel.fromJson(Map<String, dynamic> json) =
      _$_ServerStatusModel.fromJson;

  @override
  @JsonKey(name: 'cpu_usage')
  CpuUsageModel get cpuUsageItems;
  @override
  @JsonKey(name: 'mem_usage')
  MemUsageModel get memUsage;
  @override
  @JsonKey(name: 'storage_usage')
  List<StorageUsageModel> get storageUsage;
  @override
  @JsonKey(name: 'last_check')
  int get lastCheckInt;
  @override
  @JsonKey(ignore: true)
  _$$_ServerStatusModelCopyWith<_$_ServerStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CpuUsageModel _$CpuUsageModelFromJson(Map<String, dynamic> json) {
  return _CpuUsageModel.fromJson(json);
}

/// @nodoc
mixin _$CpuUsageModel {
  @JsonKey(name: 'vendor_id')
  String get vendorId => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'cpu_usage')
  List<CpuUsageItemModel> get cpuUsage => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'vendor_id') String vendorId,
      String brand,
      @JsonKey(name: 'cpu_usage') List<CpuUsageItemModel> cpuUsage});
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
    Object? vendorId = null,
    Object? brand = null,
    Object? cpuUsage = null,
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
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as List<CpuUsageItemModel>,
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
      {@JsonKey(name: 'vendor_id') String vendorId,
      String brand,
      @JsonKey(name: 'cpu_usage') List<CpuUsageItemModel> cpuUsage});
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
    Object? vendorId = null,
    Object? brand = null,
    Object? cpuUsage = null,
  }) {
    return _then(_$_CpuUsageModel(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cpuUsage: null == cpuUsage
          ? _value._cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as List<CpuUsageItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuUsageModel extends _CpuUsageModel {
  const _$_CpuUsageModel(
      {@JsonKey(name: 'vendor_id') required this.vendorId,
      required this.brand,
      @JsonKey(name: 'cpu_usage')
      required final List<CpuUsageItemModel> cpuUsage})
      : _cpuUsage = cpuUsage,
        super._();

  factory _$_CpuUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuUsageModelFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final String vendorId;
  @override
  final String brand;
  final List<CpuUsageItemModel> _cpuUsage;
  @override
  @JsonKey(name: 'cpu_usage')
  List<CpuUsageItemModel> get cpuUsage {
    if (_cpuUsage is EqualUnmodifiableListView) return _cpuUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cpuUsage);
  }

  @override
  String toString() {
    return 'CpuUsageModel(vendorId: $vendorId, brand: $brand, cpuUsage: $cpuUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuUsageModel &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._cpuUsage, _cpuUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, brand,
      const DeepCollectionEquality().hash(_cpuUsage));

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
      {@JsonKey(name: 'vendor_id') required final String vendorId,
      required final String brand,
      @JsonKey(name: 'cpu_usage')
      required final List<CpuUsageItemModel> cpuUsage}) = _$_CpuUsageModel;
  const _CpuUsageModel._() : super._();

  factory _CpuUsageModel.fromJson(Map<String, dynamic> json) =
      _$_CpuUsageModel.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  String get vendorId;
  @override
  String get brand;
  @override
  @JsonKey(name: 'cpu_usage')
  List<CpuUsageItemModel> get cpuUsage;
  @override
  @JsonKey(ignore: true)
  _$$_CpuUsageModelCopyWith<_$_CpuUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CpuUsageItemModel _$CpuUsageItemModelFromJson(Map<String, dynamic> json) {
  return _CpuUsageItemModel.fromJson(json);
}

/// @nodoc
mixin _$CpuUsageItemModel {
  @JsonKey(name: 'cpu_freq')
  double get cpuFreq => throw _privateConstructorUsedError; // between 0 and 1
  @JsonKey(name: 'cpu_usage')
  double get cpuUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpuUsageItemModelCopyWith<CpuUsageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuUsageItemModelCopyWith<$Res> {
  factory $CpuUsageItemModelCopyWith(
          CpuUsageItemModel value, $Res Function(CpuUsageItemModel) then) =
      _$CpuUsageItemModelCopyWithImpl<$Res, CpuUsageItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_freq') double cpuFreq,
      @JsonKey(name: 'cpu_usage') double cpuUsage});
}

/// @nodoc
class _$CpuUsageItemModelCopyWithImpl<$Res, $Val extends CpuUsageItemModel>
    implements $CpuUsageItemModelCopyWith<$Res> {
  _$CpuUsageItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuFreq = null,
    Object? cpuUsage = null,
  }) {
    return _then(_value.copyWith(
      cpuFreq: null == cpuFreq
          ? _value.cpuFreq
          : cpuFreq // ignore: cast_nullable_to_non_nullable
              as double,
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CpuUsageItemModelCopyWith<$Res>
    implements $CpuUsageItemModelCopyWith<$Res> {
  factory _$$_CpuUsageItemModelCopyWith(_$_CpuUsageItemModel value,
          $Res Function(_$_CpuUsageItemModel) then) =
      __$$_CpuUsageItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cpu_freq') double cpuFreq,
      @JsonKey(name: 'cpu_usage') double cpuUsage});
}

/// @nodoc
class __$$_CpuUsageItemModelCopyWithImpl<$Res>
    extends _$CpuUsageItemModelCopyWithImpl<$Res, _$_CpuUsageItemModel>
    implements _$$_CpuUsageItemModelCopyWith<$Res> {
  __$$_CpuUsageItemModelCopyWithImpl(
      _$_CpuUsageItemModel _value, $Res Function(_$_CpuUsageItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuFreq = null,
    Object? cpuUsage = null,
  }) {
    return _then(_$_CpuUsageItemModel(
      cpuFreq: null == cpuFreq
          ? _value.cpuFreq
          : cpuFreq // ignore: cast_nullable_to_non_nullable
              as double,
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpuUsageItemModel extends _CpuUsageItemModel {
  const _$_CpuUsageItemModel(
      {@JsonKey(name: 'cpu_freq') required this.cpuFreq,
      @JsonKey(name: 'cpu_usage') required this.cpuUsage})
      : super._();

  factory _$_CpuUsageItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpuUsageItemModelFromJson(json);

  @override
  @JsonKey(name: 'cpu_freq')
  final double cpuFreq;
// between 0 and 1
  @override
  @JsonKey(name: 'cpu_usage')
  final double cpuUsage;

  @override
  String toString() {
    return 'CpuUsageItemModel(cpuFreq: $cpuFreq, cpuUsage: $cpuUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpuUsageItemModel &&
            (identical(other.cpuFreq, cpuFreq) || other.cpuFreq == cpuFreq) &&
            (identical(other.cpuUsage, cpuUsage) ||
                other.cpuUsage == cpuUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cpuFreq, cpuUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpuUsageItemModelCopyWith<_$_CpuUsageItemModel> get copyWith =>
      __$$_CpuUsageItemModelCopyWithImpl<_$_CpuUsageItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CpuUsageItemModelToJson(
      this,
    );
  }
}

abstract class _CpuUsageItemModel extends CpuUsageItemModel {
  const factory _CpuUsageItemModel(
          {@JsonKey(name: 'cpu_freq') required final double cpuFreq,
          @JsonKey(name: 'cpu_usage') required final double cpuUsage}) =
      _$_CpuUsageItemModel;
  const _CpuUsageItemModel._() : super._();

  factory _CpuUsageItemModel.fromJson(Map<String, dynamic> json) =
      _$_CpuUsageItemModel.fromJson;

  @override
  @JsonKey(name: 'cpu_freq')
  double get cpuFreq;
  @override // between 0 and 1
  @JsonKey(name: 'cpu_usage')
  double get cpuUsage;
  @override
  @JsonKey(ignore: true)
  _$$_CpuUsageItemModelCopyWith<_$_CpuUsageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MemUsageModel _$MemUsageModelFromJson(Map<String, dynamic> json) {
  return _MemUsageModel.fromJson(json);
}

/// @nodoc
mixin _$MemUsageModel {
  int get total => throw _privateConstructorUsedError;
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
  $Res call({int total, int available});
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
abstract class _$$_MemUsageModelCopyWith<$Res>
    implements $MemUsageModelCopyWith<$Res> {
  factory _$$_MemUsageModelCopyWith(
          _$_MemUsageModel value, $Res Function(_$_MemUsageModel) then) =
      __$$_MemUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int available});
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
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_$_MemUsageModel(
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
class _$_MemUsageModel extends _MemUsageModel {
  const _$_MemUsageModel({required this.total, required this.available})
      : super._();

  factory _$_MemUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemUsageModelFromJson(json);

  @override
  final int total;
  @override
  final int available;

  @override
  String toString() {
    return 'MemUsageModel(total: $total, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemUsageModel &&
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
      {required final int total,
      required final int available}) = _$_MemUsageModel;
  const _MemUsageModel._() : super._();

  factory _MemUsageModel.fromJson(Map<String, dynamic> json) =
      _$_MemUsageModel.fromJson;

  @override
  int get total;
  @override
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$_MemUsageModelCopyWith<_$_MemUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StorageUsageModel _$StorageUsageModelFromJson(Map<String, dynamic> json) {
  return _StorageUsageModel.fromJson(json);
}

/// @nodoc
mixin _$StorageUsageModel {
  String get name => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageUsageModelCopyWith<StorageUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageUsageModelCopyWith<$Res> {
  factory $StorageUsageModelCopyWith(
          StorageUsageModel value, $Res Function(StorageUsageModel) then) =
      _$StorageUsageModelCopyWithImpl<$Res, StorageUsageModel>;
  @useResult
  $Res call({String name, int total, int available});
}

/// @nodoc
class _$StorageUsageModelCopyWithImpl<$Res, $Val extends StorageUsageModel>
    implements $StorageUsageModelCopyWith<$Res> {
  _$StorageUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_StorageUsageModelCopyWith<$Res>
    implements $StorageUsageModelCopyWith<$Res> {
  factory _$$_StorageUsageModelCopyWith(_$_StorageUsageModel value,
          $Res Function(_$_StorageUsageModel) then) =
      __$$_StorageUsageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int total, int available});
}

/// @nodoc
class __$$_StorageUsageModelCopyWithImpl<$Res>
    extends _$StorageUsageModelCopyWithImpl<$Res, _$_StorageUsageModel>
    implements _$$_StorageUsageModelCopyWith<$Res> {
  __$$_StorageUsageModelCopyWithImpl(
      _$_StorageUsageModel _value, $Res Function(_$_StorageUsageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? total = null,
    Object? available = null,
  }) {
    return _then(_$_StorageUsageModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_StorageUsageModel extends _StorageUsageModel {
  const _$_StorageUsageModel(
      {required this.name, required this.total, required this.available})
      : super._();

  factory _$_StorageUsageModel.fromJson(Map<String, dynamic> json) =>
      _$$_StorageUsageModelFromJson(json);

  @override
  final String name;
  @override
  final int total;
  @override
  final int available;

  @override
  String toString() {
    return 'StorageUsageModel(name: $name, total: $total, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageUsageModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, total, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageUsageModelCopyWith<_$_StorageUsageModel> get copyWith =>
      __$$_StorageUsageModelCopyWithImpl<_$_StorageUsageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageUsageModelToJson(
      this,
    );
  }
}

abstract class _StorageUsageModel extends StorageUsageModel {
  const factory _StorageUsageModel(
      {required final String name,
      required final int total,
      required final int available}) = _$_StorageUsageModel;
  const _StorageUsageModel._() : super._();

  factory _StorageUsageModel.fromJson(Map<String, dynamic> json) =
      _$_StorageUsageModel.fromJson;

  @override
  String get name;
  @override
  int get total;
  @override
  int get available;
  @override
  @JsonKey(ignore: true)
  _$$_StorageUsageModelCopyWith<_$_StorageUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
