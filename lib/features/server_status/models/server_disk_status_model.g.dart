// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_disk_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerDiskStatusModel _$$_ServerDiskStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerDiskStatusModel(
      frames: (json['frames'] as List<dynamic>)
          .map((e) => DiskUsageFrameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServerDiskStatusModelToJson(
        _$_ServerDiskStatusModel instance) =>
    <String, dynamic>{
      'frames': instance.frames.map((e) => e.toJson()).toList(),
    };

_$_DiskUsageFrameModel _$$_DiskUsageFrameModelFromJson(
        Map<String, dynamic> json) =>
    _$_DiskUsageFrameModel(
      disksUsage: (json['disks_usage'] as List<dynamic>)
          .map((e) => DiskUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiskUsageFrameModelToJson(
        _$_DiskUsageFrameModel instance) =>
    <String, dynamic>{
      'disks_usage': instance.disksUsage.map((e) => e.toJson()).toList(),
    };

_$_DiskUsageModel _$$_DiskUsageModelFromJson(Map<String, dynamic> json) =>
    _$_DiskUsageModel(
      total: (json['total'] as num).toDouble(),
      available: (json['available'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DiskUsageModelToJson(_$_DiskUsageModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'available': instance.available,
    };
