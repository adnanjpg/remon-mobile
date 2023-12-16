// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_hardware_info_model.freezed.dart';
part 'server_hardware_info_model.g.dart';

// example data:
// {
//     "cpu_info": [
//         {
//             "id": 1,
//             "cpu_id": "b33842e3eb00fc9e54ee8114a94eb6c0eaf4d2e7a1e5cfbca3680d330f920969",
//             "core_count": 8,
//             "vendor_id": "Apple",
//             "brand": "Apple M1",
//             "last_check": 1702738377
//         }
//     ],
//     "disks_info": [
//         {
//             "id": 1,
//             "disk_id": "a1fe34138e4fc87ea136518c93f64a0d8b9b1a1c4081ed776eccd5bf785cdd1f",
//             "name": "Macintosh HD",
//             "fs_type": "apfs",
//             "kind": "SSD",
//             "is_removable": false,
//             "mount_point": "/",
//             "total_space": 245107195904,
//             "last_check": 1702738377
//         },
//         {
//             "id": 2,
//             "disk_id": "51a4e5aa08662414e6a66bfccb59e10c445d207b0292a43fef2ca08f32bc57c1",
//             "name": "Macintosh HD",
//             "fs_type": "apfs",
//             "kind": "SSD",
//             "is_removable": false,
//             "mount_point": "/System/Volumes/Data",
//             "total_space": 245107195904,
//             "last_check": 1702738377
//         }
//     ],
//     "mem_info": [
//         {
//             "id": 1,
//             "mem_id": "1",
//             "total_space": 8589934592,
//             "last_check": 1702738377
//         }
//     ]
// }

@freezed
class ServerHardwareInfoModel with _$ServerHardwareInfoModel {
  const factory ServerHardwareInfoModel({
    @JsonKey(name: 'cpu_info') required List<CpuInfoModel> cpuInfo,
    @JsonKey(name: 'disks_info') required List<DiskInfoModel> disksInfo,
    @JsonKey(name: 'mem_info') required List<MemInfoModel> memInfo,
  }) = _ServerHardwareInfoModel;

  factory ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ServerHardwareInfoModelFromJson(json);

  const ServerHardwareInfoModel._();
}

@freezed
class CpuInfoModel with _$CpuInfoModel {
  const factory CpuInfoModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'cpu_id') required String cpuId,
    @JsonKey(name: 'core_count') required int coreCount,
    @JsonKey(name: 'vendor_id') required String vendorId,
    @JsonKey(name: 'brand') required String brand,
    @JsonKey(name: 'last_check') required int lastCheckInt,
  }) = _CpuInfoModel;

  factory CpuInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CpuInfoModelFromJson(json);

  const CpuInfoModel._();

  DateTime get lastCheck => DateTime.fromMillisecondsSinceEpoch(lastCheckInt);
}

@freezed
class DiskInfoModel with _$DiskInfoModel {
  const factory DiskInfoModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'disk_id') required String diskId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'fs_type') required String fsType,
    @JsonKey(name: 'kind') required String kind,
    @JsonKey(name: 'is_removable') required bool isRemovable,
    @JsonKey(name: 'mount_point') required String mountPoint,
    @JsonKey(name: 'total_space') required int totalSpace,
    @JsonKey(name: 'last_check') required int lastCheckInt,
  }) = _DiskInfoModel;

  factory DiskInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DiskInfoModelFromJson(json);

  const DiskInfoModel._();

  DateTime get lastCheck => DateTime.fromMillisecondsSinceEpoch(lastCheckInt);
}

@freezed
class MemInfoModel with _$MemInfoModel {
  const factory MemInfoModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'mem_id') required String memId,
    @JsonKey(name: 'total_space') required int totalSpace,
    @JsonKey(name: 'last_check') required int lastCheckInt,
  }) = _MemInfoModel;

  factory MemInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MemInfoModelFromJson(json);

  const MemInfoModel._();

  DateTime get lastCheck => DateTime.fromMillisecondsSinceEpoch(lastCheckInt);
}
