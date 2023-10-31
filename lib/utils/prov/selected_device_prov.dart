import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';

final selectedDeviceProv =
    StateProvider<DeviceModel>((ref) => DeviceModel.create());
