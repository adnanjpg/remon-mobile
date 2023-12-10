// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_cpu_status_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerCpuStatusRequestModel _$$_ServerCpuStatusRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServerCpuStatusRequestModel(
      startTime: json['start_time'] as int,
      endTime: json['end_time'] as int,
    );

Map<String, dynamic> _$$_ServerCpuStatusRequestModelToJson(
        _$_ServerCpuStatusRequestModel instance) =>
    <String, dynamic>{
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
