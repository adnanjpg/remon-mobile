import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'device_model.g.dart';
part 'device_model.freezed.dart';

const collectionOnFreezed = Collection(ignore: {'copyWith'});
const embeddedOnFreezed = Embedded(ignore: {'copyWith'});

@freezed
@collectionOnFreezed
class DeviceModel with _$DeviceModel {
  const DeviceModel._();

  const factory DeviceModel({
    required int id,
    required String title,
    required String description,
    required String ip,
    required int port,
    required String token,
    required DateTime? addedOn,
    required DateTime? lastUsedOn,
    required DateTime? tokenUpdatedOn,
  }) = _DeviceModel;

  String get ipWPort => '$ip:$port';
}
