// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_mem_status_model.freezed.dart';
part 'server_mem_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "id": 1,
//             "last_check": 1702724783,
//             "mems_usage": [
//                 {
//                     "id": 1,
//                     "frame_id": 1,
//                     "mem_id": "1",
//                     "available": 198361088
//                 }
//             ]
//         },
//         {
//             "id": 2,
//             "last_check": 1702724784,
//             "mems_usage": [
//                 {
//                     "id": 2,
//                     "frame_id": 2,
//                     "mem_id": "1",
//                     "available": 47071232
//                 }
//             ]
//         }
//     ]
// }

@freezed
class ServerMemStatusModel with _$ServerMemStatusModel {
  const factory ServerMemStatusModel({
    @JsonKey(name: 'frames') required List<MemUsageFrameModel> frames,
  }) = _ServerMemStatusModel;

  factory ServerMemStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ServerMemStatusModelFromJson(json);

  const ServerMemStatusModel._();
}

@freezed
class MemUsageFrameModel with _$MemUsageFrameModel {
  const factory MemUsageFrameModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'last_check') required int lastCheck,
    @JsonKey(name: 'mems_usage') required List<MemUsageModel> memsUsage,
  }) = _MemUsageFrameModel;

  factory MemUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$MemUsageFrameModelFromJson(json);

  const MemUsageFrameModel._();

  double usagePercent(
    // a list of records of total memory and usage percent
    Iterable<
            ({
              int total,
              String memId,
            })>
        memsTotal,
  ) {
    final percentages = memsTotal.map(
      (memTotal) {
        final usages = memsUsage.where(
          (element) {
            return element.memId == memTotal.memId;
          },
        );

        final avg = usages.fold<int>(
              0,
              (a, b) {
                return a + b.available;
              },
            ) /
            usages.length;

        final percent = avg / memTotal.total * 100;

        return percent;
      },
    ).toList();

    final avg = percentages.fold<double>(
          0,
          (a, b) {
            return a + b;
          },
        ) /
        percentages.length;

    return avg;
  }
}

@freezed
class MemUsageModel with _$MemUsageModel {
  const factory MemUsageModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'frame_id') required int frameId,
    @JsonKey(name: 'mem_id') required String memId,
    @JsonKey(name: 'available') required int available,
  }) = _MemUsageModel;

  factory MemUsageModel.fromJson(Map<String, dynamic> json) =>
      _$MemUsageModelFromJson(json);

  const MemUsageModel._();

  int usagePercent(int total) => (available / total * 100).toInt();
}
