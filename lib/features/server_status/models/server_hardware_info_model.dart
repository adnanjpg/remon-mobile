// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_hardware_info_model.freezed.dart';
part 'server_hardware_info_model.g.dart';

// example data:
// {
//     "cpu_info": {
//         "vendor_id": "Intel",
//         "brand": "Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz"
//     },
//     "disks_info": [
//         {
//             "name": "C:"
//         },
//         {
//             "name": "D:"
//         }
//     ],
//     "last_check": 1702194453
// }

@freezed
class ServerHardwareInfoModel with _$ServerHardwareInfoModel {
  const factory ServerHardwareInfoModel({
    @JsonKey(name: 'cpu_info') required CpuInfoModel cpuInfo,
    @JsonKey(name: 'disks_info') required List<DiskInfoModel> disksInfo,
    @JsonKey(name: 'last_check') required int lastCheckInt,
  }) = _ServerHardwareInfoModel;

  factory ServerHardwareInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ServerHardwareInfoModelFromJson(json);

  const ServerHardwareInfoModel._();

  DateTime get lastCheck => DateTime.fromMillisecondsSinceEpoch(lastCheckInt);
}

@freezed
class CpuInfoModel with _$CpuInfoModel {
  const factory CpuInfoModel({
    @JsonKey(name: 'vendor_id') required String vendorId,
    @JsonKey(name: 'brand') required String brand,
  }) = _CpuInfoModel;

  factory CpuInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CpuInfoModelFromJson(json);

  const CpuInfoModel._();
}

@freezed
class DiskInfoModel with _$DiskInfoModel {
  const factory DiskInfoModel({
    @JsonKey(name: 'name') required String name,
  }) = _DiskInfoModel;

  factory DiskInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DiskInfoModelFromJson(json);

  const DiskInfoModel._();
}
