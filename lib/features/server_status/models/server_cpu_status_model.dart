// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_cpu_status_model.freezed.dart';
part 'server_cpu_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "id": 1,
//             "last_check": 1702724783,
//             "cores_usage": [
//                 {
//                     "id": 1,
//                     "frame_id": 1,
//                     "cpu_id": "b33842e3eb00fc9e54ee8114a94eb6c0eaf4d2e7a1e5cfbca3680d330f920969",
//                     "freq": 3204,
//                     "usage": 25
//                 },
//                 {
//                     "id": 2,
//                     "frame_id": 1,
//                     "cpu_id": "b33842e3eb00fc9e54ee8114a94eb6c0eaf4d2e7a1e5cfbca3680d330f920969",
//                     "freq": 3204,
//                     "usage": 23
//                 },
//                 {
//                     "id": 3,
//                     "frame_id": 1,
//                     "cpu_id": "b33842e3eb00fc9e54ee8114a94eb6c0eaf4d2e7a1e5cfbca3680d330f920969",
//                     "freq": 3204,
//                     "usage": 20
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
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'last_check') required int lastCheck,
    @JsonKey(name: 'cores_usage') required List<CpuUsageModel> coresUsage,
  }) = _CpuUsageFrameModel;

  factory CpuUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageFrameModelFromJson(json);

  const CpuUsageFrameModel._();

  double get coresUsageMean {
    final ret = coresUsage.map((e) => e.usage).reduce((a, b) => a + b);

    return ret / coresUsage.length;
  }

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
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'frame_id') required int frameId,
    @JsonKey(name: 'cpu_id') required String cpuId,
    // in MHz
    @JsonKey(name: 'freq') required double freq,
    // in %
    @JsonKey(name: 'usage') required double usage,
  }) = _CpuUsageModel;

  factory CpuUsageModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageModelFromJson(json);

  const CpuUsageModel._();
}

extension Ls on List<ServerCpuStatusModel> {
  List<CpuUsageFrameModel> get frames {
    return expand(
      (a) {
        return a.frames;
      },
    ).toList();
  }
}
