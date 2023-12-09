// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerStatusModel _$$_ServerStatusModelFromJson(Map<String, dynamic> json) =>
    _$_ServerStatusModel(
      cpuUsage:
          CpuUsageModel.fromJson(json['cpu_usage'] as Map<String, dynamic>),
      memUsage:
          MemUsageModel.fromJson(json['mem_usage'] as Map<String, dynamic>),
      storageUsage: (json['storage_usage'] as List<dynamic>)
          .map((e) => StorageUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastCheckInt: json['last_check'] as int,
    );

Map<String, dynamic> _$$_ServerStatusModelToJson(
        _$_ServerStatusModel instance) =>
    <String, dynamic>{
      'cpu_usage': instance.cpuUsage.toJson(),
      'mem_usage': instance.memUsage.toJson(),
      'storage_usage': instance.storageUsage.map((e) => e.toJson()).toList(),
      'last_check': instance.lastCheckInt,
    };

_$_CpuUsageModel _$$_CpuUsageModelFromJson(Map<String, dynamic> json) =>
    _$_CpuUsageModel(
      vendorId: json['vendor_id'] as String,
      brand: json['brand'] as String,
      cpuUsage: (json['cpu_usage'] as List<dynamic>)
          .map((e) => CpuUsageItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CpuUsageModelToJson(_$_CpuUsageModel instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'brand': instance.brand,
      'cpu_usage': instance.cpuUsage.map((e) => e.toJson()).toList(),
    };

_$_CpuUsageItemModel _$$_CpuUsageItemModelFromJson(Map<String, dynamic> json) =>
    _$_CpuUsageItemModel(
      cpuFreq: (json['cpu_freq'] as num).toDouble(),
      cpuUsage: (json['cpu_usage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CpuUsageItemModelToJson(
        _$_CpuUsageItemModel instance) =>
    <String, dynamic>{
      'cpu_freq': instance.cpuFreq,
      'cpu_usage': instance.cpuUsage,
    };

_$_MemUsageModel _$$_MemUsageModelFromJson(Map<String, dynamic> json) =>
    _$_MemUsageModel(
      total: json['total'] as int,
      available: json['available'] as int,
    );

Map<String, dynamic> _$$_MemUsageModelToJson(_$_MemUsageModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'available': instance.available,
    };

_$_StorageUsageModel _$$_StorageUsageModelFromJson(Map<String, dynamic> json) =>
    _$_StorageUsageModel(
      name: json['name'] as String,
      total: json['total'] as int,
      available: json['available'] as int,
    );

Map<String, dynamic> _$$_StorageUsageModelToJson(
        _$_StorageUsageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total': instance.total,
      'available': instance.available,
    };
