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
}
