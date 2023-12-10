// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_cpu_status_model.freezed.dart';
part 'server_cpu_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "cores_usage": [
//                 {
//                     "freq": 1.8,
//                     "usage": 0.9
//                 },
//                 {
//                     "freq": 2.5,
//                     "usage": 0.1
//                 }
//             ]
//         },
//         {
//             "cores_usage": [
//                 {
//                     "freq": 2.8,
//                     "usage": 0.5
//                 },
//                 {
//                     "freq": 2.1,
//                     "usage": 0.4
//                 }
//             ]
//         }
//     ]
// }
@freezed
class ServerCpuStatusModel with _$ServerCpuStatusModel {
  const factory ServerCpuStatusModel({
    @JsonKey(name: 'frames') required List<CpuUsageFrameModel> frames,
  }) = _ServerCpuStatusModel;

  factory ServerCpuStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ServerCpuStatusModelFromJson(json);

  const ServerCpuStatusModel._();
}

@freezed
class CpuUsageFrameModel with _$CpuUsageFrameModel {
  const factory CpuUsageFrameModel({
    @JsonKey(name: 'cores_usage') required List<CpuUsageModel> coresUsage,
  }) = _CpuUsageFrameModel;

  factory CpuUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageFrameModelFromJson(json);

  const CpuUsageFrameModel._();

  DateTime frameTime(
    int index,
    DateTime startTime,
    DateTime endTime,
    Duration frequency,
  ) {
    final diff = endTime.difference(startTime);

    final frameDuration = diff ~/ frequency.inMilliseconds;

    final ret = startTime.add(frameDuration * index);

    return ret;
  }
}

@freezed
class CpuUsageModel with _$CpuUsageModel {
  const factory CpuUsageModel({
    // in GHz
    @JsonKey(name: 'freq') required double freq,
    @JsonKey(name: 'usage') required double usage,
  }) = _CpuUsageModel;

  factory CpuUsageModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageModelFromJson(json);

  const CpuUsageModel._();

  double get usagePercentage => usage * 100;
  double get freqInMHz => freq * 1000;
}
