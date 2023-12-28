part of 'local_db_service.dart';

extension Device on LocalDbService {
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

  // TODO(adnanjpg): replace once this issue resolves
  // https://github.com/isar/isar/issues/1478
  Stream<int> watchDevicesCount() {
    try {
      final count = db.deviceModels.where().titleIsNotEmpty().watch(
            fireImmediately: true,
          );

      return count.map(
        (event) {
          return event.length;
        },
      );
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  Stream<bool> watchHasAnyDevice() {
    try {
      final devicesCountStream = watchDevicesCount();

      final hasAnyDeviceStream = devicesCountStream.map(
        (event) {
          return event > 0;
        },
      );

      return hasAnyDeviceStream;
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  DeviceModel? getActiveUsedDevice() {
    try {
      final devices = db.deviceModels
          .where()
          .lastUsedOnIsNotNull()
          .sortByLastUsedOnDesc()
          .findFirst();

      return devices;
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

  Future<bool> deleteDevice({
    required DeviceModel device,
  }) async {
    try {
      await db.writeAsync(
        (isar) {
          isar.deviceModels.delete(
            device.id,
          );
        },
      );

      return true;
    } catch (e) {
      logger.e(e);

      return false;
    }
  }

  Future<bool> useDevice({
    required DeviceModel device,
  }) async {
    try {
      await db.writeAsync(
        (isar) {
          isar.deviceModels.put(
            device.copyWith(
              lastUsedOn: DateTime.now(),
            ),
          );
        },
      );

      return true;
    } catch (e) {
      logger.e(e);

      return false;
    }
  }
}
