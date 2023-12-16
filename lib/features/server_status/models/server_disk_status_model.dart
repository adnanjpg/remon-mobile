// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_disk_status_model.freezed.dart';
part 'server_disk_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "id": 1,
//             "last_check": 1702724783,
//             "disks_usage": [
//                 {
//                     "id": 1,
//                     "frame_id": 1,
//                     "disk_id": "a1fe34138e4fc87ea136518c93f64a0d8b9b1a1c4081ed776eccd5bf785cdd1f",
//                     "available": 8213032960
//                 },
//                 {
//                     "id": 2,
//                     "frame_id": 1,
//                     "disk_id": "51a4e5aa08662414e6a66bfccb59e10c445d207b0292a43fef2ca08f32bc57c1",
//                     "available": 8213032960
//                 }
//             ]
//         },
//         {
//             "id": 2,
//             "last_check": 1702724784,
//             "disks_usage": [
//                 {
//                     "id": 3,
//                     "frame_id": 2,
//                     "disk_id": "a1fe34138e4fc87ea136518c93f64a0d8b9b1a1c4081ed776eccd5bf785cdd1f",
//                     "available": 8212926464
//                 },
//                 {
//                     "id": 4,
//                     "frame_id": 2,
//                     "disk_id": "51a4e5aa08662414e6a66bfccb59e10c445d207b0292a43fef2ca08f32bc57c1",
//                     "available": 8212926464
//                 }
//             ]
//         }
//     ]
// }

@freezed
class ServerDiskStatusModel with _$ServerDiskStatusModel {
  const factory ServerDiskStatusModel({
    @JsonKey(name: 'frames') required List<DiskUsageFrameModel> frames,
  }) = _ServerDiskStatusModel;

  factory ServerDiskStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ServerDiskStatusModelFromJson(json);

  const ServerDiskStatusModel._();
}

@freezed
class DiskUsageFrameModel with _$DiskUsageFrameModel {
  const factory DiskUsageFrameModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'last_check') required int lastCheck,
    @JsonKey(name: 'disks_usage') required List<DiskUsageModel> disksUsage,
  }) = _DiskUsageFrameModel;

  factory DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$DiskUsageFrameModelFromJson(json);

  const DiskUsageFrameModel._();

  double usagePercent(
    // a list of records of total memory and usage percent
    Iterable<
            ({
              int total,
              String diskId,
            })>
        disksTotal,
  ) {
    final percentages = disksTotal.map(
      (diskTotal) {
        final usages = disksUsage.where(
          (element) {
            return element.diskId == diskTotal.diskId;
          },
        );

        final avg = usages.fold<int>(
              0,
              (a, b) {
                return a + b.available;
              },
            ) /
            usages.length;

        final percent = avg / diskTotal.total * 100;

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
class DiskUsageModel with _$DiskUsageModel {
  const factory DiskUsageModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'frame_id') required int frameId,
    @JsonKey(name: 'disk_id') required String diskId,
    @JsonKey(name: 'available') required int available,
  }) = _DiskUsageModel;

  factory DiskUsageModel.fromJson(Map<String, dynamic> json) =>
      _$DiskUsageModelFromJson(json);

  const DiskUsageModel._();
}
