// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_hardware_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerHardwareInfoModel _$$_ServerHardwareInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerHardwareInfoModel(
      cpuInfo: CpuInfoModel.fromJson(json['cpu_info'] as Map<String, dynamic>),
      disksInfo: (json['disks_info'] as List<dynamic>)
          .map((e) => DiskInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastCheckInt: json['last_check'] as int,
    );

Map<String, dynamic> _$$_ServerHardwareInfoModelToJson(
        _$_ServerHardwareInfoModel instance) =>
    <String, dynamic>{
      'cpu_info': instance.cpuInfo.toJson(),
      'disks_info': instance.disksInfo.map((e) => e.toJson()).toList(),
      'last_check': instance.lastCheckInt,
    };

_$_CpuInfoModel _$$_CpuInfoModelFromJson(Map<String, dynamic> json) =>
    _$_CpuInfoModel(
      vendorId: json['vendor_id'] as String,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$$_CpuInfoModelToJson(_$_CpuInfoModel instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'brand': instance.brand,
    };

_$_DiskInfoModel _$$_DiskInfoModelFromJson(Map<String, dynamic> json) =>
    _$_DiskInfoModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DiskInfoModelToJson(_$_DiskInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
