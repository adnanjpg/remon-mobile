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
      id: json['id'] as int,
      lastCheck: json['last_check'] as int,
      disksUsage: (json['disks_usage'] as List<dynamic>)
          .map((e) => DiskUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiskUsageFrameModelToJson(
        _$_DiskUsageFrameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_check': instance.lastCheck,
      'disks_usage': instance.disksUsage.map((e) => e.toJson()).toList(),
    };

_$_DiskUsageModel _$$_DiskUsageModelFromJson(Map<String, dynamic> json) =>
    _$_DiskUsageModel(
      id: json['id'] as int,
      frameId: json['frame_id'] as int,
      diskId: json['disk_id'] as String,
      available: json['available'] as int,
    );

Map<String, dynamic> _$$_DiskUsageModelToJson(_$_DiskUsageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frame_id': instance.frameId,
      'disk_id': instance.diskId,
      'available': instance.available,
    };
