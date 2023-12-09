// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_status_model.freezed.dart';
part 'server_status_model.g.dart';

// example data:
// {
//   "cpu_usage": {
//         "vendor_id": "Intel",
//         "brand": "Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz",
//         "cpu_usage": [
//             {
//                 "cpu_freq": 2.8,
//                 "cpu_usage": 0.5
//             },
//             {
//                 "cpu_freq": 2.5,
//                 "cpu_usage": 0.3
//             }
//         ]
//     },
//     "mem_usage": {
//         "total": 100,
//         "available": 50
//     },
//     "storage_usage": [
//         {
//             "name": "C:",
//             "total": 100,
//             "available": 50
//         },
//         {
//             "name": "D:",
//             "total": 100,
//             "available": 50
//         }
//     ],
//     "last_check": 1702150811
// }
@freezed
class ServerStatusModel with _$ServerStatusModel {
  const factory ServerStatusModel({
    @JsonKey(name: 'cpu_usage') required CpuUsageModel cpuUsageItems,
    @JsonKey(name: 'mem_usage') required MemUsageModel memUsage,
    @JsonKey(name: 'storage_usage')
    required List<StorageUsageModel> storageUsage,
    @JsonKey(name: 'last_check') required int lastCheckInt,
  }) = _ServerStatusModel;

  factory ServerStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ServerStatusModelFromJson(json);

  const ServerStatusModel._();

  DateTime get lastCheck => DateTime.fromMillisecondsSinceEpoch(lastCheckInt);
}

@freezed
class CpuUsageModel with _$CpuUsageModel {
  const factory CpuUsageModel({
    @JsonKey(name: 'vendor_id') required String vendorId,
    required String brand,
    @JsonKey(name: 'cpu_usage') required List<CpuUsageItemModel> usageItems,
  }) = _CpuUsageModel;

  const CpuUsageModel._();

  factory CpuUsageModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageModelFromJson(json);
}

@freezed
class CpuUsageItemModel with _$CpuUsageItemModel {
  const factory CpuUsageItemModel({
    @JsonKey(name: 'cpu_freq') required double cpuFreq,
    // between 0 and 1
    @JsonKey(name: 'cpu_usage') required double cpuUsage,
  }) = _CpuUsageItemModel;

  const CpuUsageItemModel._();

  factory CpuUsageItemModel.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageItemModelFromJson(json);

  double get cpuUsagePercentage => cpuUsage * 100;
}

@freezed
class MemUsageModel with _$MemUsageModel {
  const factory MemUsageModel({
    required int total,
    required int available,
  }) = _MemUsageModel;

  const MemUsageModel._();

  factory MemUsageModel.fromJson(Map<String, dynamic> json) =>
      _$MemUsageModelFromJson(json);
}

@freezed
class StorageUsageModel with _$StorageUsageModel {
  const factory StorageUsageModel({
    required String name,
    required int total,
    required int available,
  }) = _StorageUsageModel;

  const StorageUsageModel._();

  factory StorageUsageModel.fromJson(Map<String, dynamic> json) =>
      _$StorageUsageModelFromJson(json);
}
