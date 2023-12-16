// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_mem_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerMemStatusModel _$$_ServerMemStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerMemStatusModel(
      frames: (json['frames'] as List<dynamic>)
          .map((e) => MemUsageFrameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServerMemStatusModelToJson(
        _$_ServerMemStatusModel instance) =>
    <String, dynamic>{
      'frames': instance.frames.map((e) => e.toJson()).toList(),
    };

_$_MemUsageFrameModel _$$_MemUsageFrameModelFromJson(
        Map<String, dynamic> json) =>
    _$_MemUsageFrameModel(
      id: json['id'] as int,
      lastCheck: json['last_check'] as int,
      memsUsage: (json['mems_usage'] as List<dynamic>)
          .map((e) => MemUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MemUsageFrameModelToJson(
        _$_MemUsageFrameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_check': instance.lastCheck,
      'mems_usage': instance.memsUsage.map((e) => e.toJson()).toList(),
    };

_$_MemUsageModel _$$_MemUsageModelFromJson(Map<String, dynamic> json) =>
    _$_MemUsageModel(
      id: json['id'] as int,
      frameId: json['frame_id'] as int,
      memId: json['mem_id'] as String,
      available: json['available'] as int,
    );

Map<String, dynamic> _$$_MemUsageModelToJson(_$_MemUsageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frame_id': instance.frameId,
      'mem_id': instance.memId,
      'available': instance.available,
    };
