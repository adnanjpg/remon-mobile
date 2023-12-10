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
      total: json['total'] as int,
      available: json['available'] as int,
    );

Map<String, dynamic> _$$_MemUsageFrameModelToJson(
        _$_MemUsageFrameModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'available': instance.available,
    };
