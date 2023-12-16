// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_hardware_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerHardwareInfoModel _$$_ServerHardwareInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerHardwareInfoModel(
      cpuInfo: (json['cpu_info'] as List<dynamic>)
          .map((e) => CpuInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      disksInfo: (json['disks_info'] as List<dynamic>)
          .map((e) => DiskInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      memInfo: (json['mem_info'] as List<dynamic>)
          .map((e) => MemInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServerHardwareInfoModelToJson(
        _$_ServerHardwareInfoModel instance) =>
    <String, dynamic>{
      'cpu_info': instance.cpuInfo.map((e) => e.toJson()).toList(),
      'disks_info': instance.disksInfo.map((e) => e.toJson()).toList(),
      'mem_info': instance.memInfo.map((e) => e.toJson()).toList(),
    };

_$_CpuInfoModel _$$_CpuInfoModelFromJson(Map<String, dynamic> json) =>
    _$_CpuInfoModel(
      id: json['id'] as int,
      cpuId: json['cpu_id'] as String,
      coreCount: json['core_count'] as int,
      vendorId: json['vendor_id'] as String,
      brand: json['brand'] as String,
      lastCheckInt: json['last_check'] as int,
    );

Map<String, dynamic> _$$_CpuInfoModelToJson(_$_CpuInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpu_id': instance.cpuId,
      'core_count': instance.coreCount,
      'vendor_id': instance.vendorId,
      'brand': instance.brand,
      'last_check': instance.lastCheckInt,
    };

_$_DiskInfoModel _$$_DiskInfoModelFromJson(Map<String, dynamic> json) =>
    _$_DiskInfoModel(
      id: json['id'] as int,
      diskId: json['disk_id'] as String,
      name: json['name'] as String,
      fsType: json['fs_type'] as String,
      kind: json['kind'] as String,
      isRemovable: json['is_removable'] as bool,
      mountPoint: json['mount_point'] as String,
      totalSpace: json['total_space'] as int,
      lastCheckInt: json['last_check'] as int,
    );

Map<String, dynamic> _$$_DiskInfoModelToJson(_$_DiskInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disk_id': instance.diskId,
      'name': instance.name,
      'fs_type': instance.fsType,
      'kind': instance.kind,
      'is_removable': instance.isRemovable,
      'mount_point': instance.mountPoint,
      'total_space': instance.totalSpace,
      'last_check': instance.lastCheckInt,
    };

_$_MemInfoModel _$$_MemInfoModelFromJson(Map<String, dynamic> json) =>
    _$_MemInfoModel(
      id: json['id'] as int,
      memId: json['mem_id'] as String,
      totalSpace: json['total_space'] as int,
      lastCheckInt: json['last_check'] as int,
    );

Map<String, dynamic> _$$_MemInfoModelToJson(_$_MemInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mem_id': instance.memId,
      'total_space': instance.totalSpace,
      'last_check': instance.lastCheckInt,
    };
