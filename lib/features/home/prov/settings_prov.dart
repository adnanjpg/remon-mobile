import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/home/models/settings_state.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/services/local_db_service/local_db_service.dart';
import 'package:remon_mobile/ui/widgets/snackbars.dart';
import 'package:remon_mobile/utils/prov/selected_device_prov.dart';
import 'package:remon_mobile/utils/route_table.dart';
import 'package:remon_mobile/utils/utils.dart';

final settingsStateProvider =
    StateNotifierProvider<SettingsStateNotifier, SettingsState>(
  SettingsStateNotifier.new,
);

class SettingsStateNotifier extends StateNotifier<SettingsState> {
  SettingsStateNotifier(this.ref) : super(SettingsState.initial());
  final Ref ref;

  void onAddDevicePressed({
    required BuildContext context,
  }) {
    GoRouter.of(context).pushNamed(
      RouteTable.rAddDeviceScreen,
    );
  }

  void onConfigureDevicePressed({
    required BuildContext context,
    required DeviceModel device,
  }) {
    GoRouter.of(context).pushNamed(
      RouteTable.rAddDeviceScreen,
      extra: {
        'device': device,
      },
    );
  }

  void onDeleteDevicePressed({
    required BuildContext context,
    required DeviceModel device,
  }) {
    ref.read(localDbService).deleteDevice(
          device: device,
        );
  }

  void onUseDevicePressed({
    required BuildContext context,
    required DeviceModel device,
  }) {
    ref.read(localDbService).useDevice(
          device: device,
        );

    ref.read(selectedDeviceProv.notifier).state = device;

    ref.read(toastMachineProv).showSuccessToast(
          context: context,
          title: getStrArgs(
            LocaleKeys.switch_device_success_message,
            args: [
              device.title,
            ],
          ),
          message: '',
        );
  }
}
