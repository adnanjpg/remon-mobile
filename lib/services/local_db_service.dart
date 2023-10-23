// ignore_for_file: unused_element, unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/utils/utils.dart';

import '../features/app_init/app_init_prov.dart';

final localDbService = Provider<LocalDbService>(LocalDbService.new);

final _localDbProv = Provider<Isar>(
  (ref) {
    final isar = Isar.get(
      schemas: ref.watch(isarSchemasProv),
      name: ref.watch(isarDefaultInstanceNameProv),
    );

    return isar;
  },
);

class LocalDbService {
  final Ref ref;

  LocalDbService(this.ref);

  Isar get db => ref.watch(_localDbProv);

  Future<int?> addDevice({
    required DeviceModel device,
  }) async {
    try {
      final newDevice = await db.writeAsync(
        (isar) {
          final id = isar.deviceModels.autoIncrement();
          final newDevice = device.copyWith(
            id: id,
          );
          isar.deviceModels.put(
            newDevice,
          );

          return newDevice;
        },
      );

      return newDevice.id;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }

  Stream<List<DeviceModel>> watchAllDevices() {
    try {
      final devices = db.deviceModels.where().watch(
            fireImmediately: true,
          );

      return devices;
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }
}
