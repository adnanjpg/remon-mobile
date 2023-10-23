import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/utils/route_table.dart';

import '../models/settings_state.dart';

final settingsStateProvider =
    StateNotifierProvider<SettingsStateNotifier, SettingsState>(
  SettingsStateNotifier.new,
);

class SettingsStateNotifier extends StateNotifier<SettingsState> {
  final Ref ref;
  SettingsStateNotifier(this.ref) : super(SettingsState.initial());

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
}
