// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_cpu_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerCpuStatusModel _$$_ServerCpuStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerCpuStatusModel(
      frames: (json['frames'] as List<dynamic>)
          .map((e) => CpuUsageFrameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServerCpuStatusModelToJson(
        _$_ServerCpuStatusModel instance) =>
    <String, dynamic>{
      'frames': instance.frames.map((e) => e.toJson()).toList(),
    };

_$_CpuUsageFrameModel _$$_CpuUsageFrameModelFromJson(
        Map<String, dynamic> json) =>
    _$_CpuUsageFrameModel(
      coresUsage: (json['cores_usage'] as List<dynamic>)
          .map((e) => CpuUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CpuUsageFrameModelToJson(
        _$_CpuUsageFrameModel instance) =>
    <String, dynamic>{
      'cores_usage': instance.coresUsage.map((e) => e.toJson()).toList(),
    };

_$_CpuUsageModel _$$_CpuUsageModelFromJson(Map<String, dynamic> json) =>
    _$_CpuUsageModel(
      freq: (json['freq'] as num).toDouble(),
      usage: (json['usage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CpuUsageModelToJson(_$_CpuUsageModel instance) =>
    <String, dynamic>{
      'freq': instance.freq,
      'usage': instance.usage,
    };
