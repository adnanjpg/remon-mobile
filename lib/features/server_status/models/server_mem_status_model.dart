// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_mem_status_model.freezed.dart';
part 'server_mem_status_model.g.dart';

// example data:
// {
//     "frames": [
//         {
//             "total": 100,
//             "available": 50
//         },
//         {
//             "total": 100,
//             "available": 60
//         },
//         {
//             "total": 100,
//             "available": 70
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
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'available') required int available,
  }) = _MemUsageFrameModel;

  factory MemUsageFrameModel.fromJson(Map<String, dynamic> json) =>
      _$MemUsageFrameModelFromJson(json);

  const MemUsageFrameModel._();

  double get usagePercent {
    return (total - available) / total;
  }
}
