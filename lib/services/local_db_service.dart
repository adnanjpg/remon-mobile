// ignore_for_file: unused_element, unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:remon_mobile/features/app_init/app_init_prov.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/utils/utils.dart';

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
  LocalDbService(this.ref);
  final Ref ref;

  Isar get db => ref.watch(_localDbProv);

  Future<int?> addDevice({
    required DeviceModel device,
  }) async {
    try {
      final newDevice = await db.writeAsync(
        (isar) {
          DeviceModel newDevice;

          if (device.id == invalidTempId) {
            final id = isar.deviceModels.autoIncrement();
            newDevice = device.copyWith(
              id: id,
            );
          } else {
            newDevice = device;
          }

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

  Future<int?> updateDevice({
    required DeviceModel device,
  }) async {
    return addDevice(
      device: device,
    );
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

  Future<DeviceModel?> getDeviceById({
    required int deviceId,
  }) async {
    try {
      final device = db.deviceModels.get(
        deviceId,
      );

      return device;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }
}
