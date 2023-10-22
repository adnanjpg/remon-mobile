import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'device_model.g.dart';
part 'device_model.freezed.dart';

const collectionOnFreezed = Collection(ignore: {'copyWith'});
const embeddedOnFreezed = Embedded(ignore: {'copyWith'});

@freezed
@collectionOnFreezed
class DeviceModelsCollection with _$DeviceModelsCollection {
  const DeviceModelsCollection._();

  const factory DeviceModelsCollection({
    required int id,
    required List<DeviceModel> devices,
  }) = _DeviceModelsCollection;
}

@freezed
@embeddedOnFreezed
class DeviceModel with _$DeviceModel {
  const DeviceModel._();

  const factory DeviceModel({
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

  factory DeviceModel.create({
    required String title,
    required String description,
    required String ip,
    required int port,
    required String token,
  }) =>
      DeviceModel(
        title: title,
        description: description,
        ip: ip,
        port: port,
        token: token,
        addedOn: null,
        lastUsedOn: null,
        tokenUpdatedOn: null,
      );
}
