// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_disk_status_model.freezed.dart';
part 'server_disk_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "disks_usage": [
//                 {
//                     "total": 100.0,
//                     "available": 50.0
//                 },
//                 {
//                     "total": 100.0,
//                     "available": 60.0
//                 }
//             ]
//         },
//         {
//             "disks_usage": [
//                 {
//                     "total": 100.0,
//                     "available": 30.0
//                 },
//                 {
//                     "total": 100.0,
//                     "available": 80.0
//                 }
//             ]
//         },
//         {
//             "disks_usage": [
//                 {
//                     "total": 100.0,
//                     "available": 20.0
//                 },
//                 {
//                     "total": 100.0,
//                     "available": 90.0
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
    @JsonKey(name: 'disks_usage') required List<DiskUsageModel> disksUsage,
  }) = _DiskUsageFrameModel;

  factory DiskUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$DiskUsageFrameModelFromJson(json);

  const DiskUsageFrameModel._();

  double get disksUsageMean {
    final ret = disksUsage.map((e) => e.available / e.total).toList();
    return ret.reduce((value, element) => value + element) / ret.length;
  }
}

@freezed
class DiskUsageModel with _$DiskUsageModel {
  const factory DiskUsageModel({
    @JsonKey(name: 'total') required double total,
    @JsonKey(name: 'available') required double available,
  }) = _DiskUsageModel;

  factory DiskUsageModel.fromJson(Map<String, dynamic> json) =>
      _$DiskUsageModelFromJson(json);

  const DiskUsageModel._();
}
