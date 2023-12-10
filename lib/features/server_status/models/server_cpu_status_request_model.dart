// pub struct GetCpuStatusRequest {
//     pub start_time: i64,
//     pub end_time: i64,
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_cpu_status_request_model.freezed.dart';
part 'server_cpu_status_request_model.g.dart';

@freezed
class ServerCpuStatusRequestModel with _$ServerCpuStatusRequestModel {
  const factory ServerCpuStatusRequestModel({
    @JsonKey(name: 'start_time') required int startTime,
    @JsonKey(name: 'end_time') required int endTime,
  }) = _ServerCpuStatusRequestModel;

  factory ServerCpuStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServerCpuStatusRequestModelFromJson(json);

  const ServerCpuStatusRequestModel._();
}
