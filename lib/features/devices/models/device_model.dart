// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'device_model.g.dart';
part 'device_model.freezed.dart';

const collectionOnFreezed = Collection(ignore: {'copyWith'});
const embeddedOnFreezed = Embedded(ignore: {'copyWith'});

int get invalidTempId => -1;
int get invalidTempPort => -1;

@freezed
@collectionOnFreezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required int id,
    required String deviceUUID,
    required String title,
    required String description,
    required String ip,
    required int port,
    required String token,
    required double ramAlertRange,
    required double cpuAlertRange,
    required double storageAlertRange,
    required DateTime? addedOn,
    required DateTime? lastUsedOn,
    required DateTime? tokenUpdatedOn,
  }) = _DeviceModel;
  const DeviceModel._();

  factory DeviceModel.create({
    required String deviceUUID,
    int? id,
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
    double? ramAlertRange,
    double? cpuAlertRange,
    double? storageAlertRange,
  }) {
    return DeviceModel(
      id: id ?? invalidTempId,
      deviceUUID: deviceUUID,
      title: title ?? '',
      description: description ?? '',
      ip: ip ?? '',
      port: port ?? invalidTempPort,
      token: token ?? '',
      ramAlertRange: ramAlertRange ?? 0,
      cpuAlertRange: cpuAlertRange ?? 0,
      storageAlertRange: storageAlertRange ?? 0,
      addedOn: DateTime.now(),
      lastUsedOn: DateTime.now(),
      tokenUpdatedOn: DateTime.now(),
    );
  }

  String get ipWPort => '$ip:$port';

  bool get isHttps => false;
  String get url => isHttps ? 'https://$ipWPort' : 'http://$ipWPort';
}

// {
//     "device_id": "test",
//     "cpu_threshold": 1.2,
//     "mem_threshold": 3.4,
//     "storage_threshold": 5.6
// }
@freezed
class UpdateDeviceInfoRequestModel with _$UpdateDeviceInfoRequestModel {
  const factory UpdateDeviceInfoRequestModel({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'cpu_threshold') required double cpuThreshold,
    @JsonKey(name: 'mem_threshold') required double memThreshold,
    @JsonKey(name: 'storage_threshold') required double storageThreshold,
  }) = _UpdateDeviceInfoRequestModel;

  factory UpdateDeviceInfoRequestModel.fromDeviceModel(DeviceModel device) {
    return UpdateDeviceInfoRequestModel(
      deviceId: device.deviceUUID,
      cpuThreshold: device.cpuAlertRange,
      memThreshold: device.ramAlertRange,
      storageThreshold: device.storageAlertRange,
    );
  }

  factory UpdateDeviceInfoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateDeviceInfoRequestModelFromJson(json);
}
