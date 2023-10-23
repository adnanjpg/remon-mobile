import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/add_device_screen_state.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/services/local_db_service.dart';
import 'package:remon_mobile/utils/utils.dart';

final addDeviceScreenProv = StateNotifierProvider.autoDispose<
    _AddDeviceScreenStateNotifier, AddDeviceScreenState>(
  (ref) => _AddDeviceScreenStateNotifier(
    ref,
  ),
);

class _AddDeviceScreenStateNotifier
    extends StateNotifier<AddDeviceScreenState> {
  final Ref ref;
  _AddDeviceScreenStateNotifier(this.ref)
      : super(
          AddDeviceScreenState.initial(),
        );
  Future<bool> _validate({
    required BuildContext context,
  }) async {
    if (state.formKey.currentState?.validate() != true) {
      return false;
    }

    return true;
  }

  Future<bool> onSubmitBtnPressed({
    required BuildContext context,
  }) async {
    if (await _validate(context: context) != true) {
      return false;
    }

    if (state.currentStep.isIp) {
      // TODO(adnanjpg): call api to send a code to the terminal

      state = state.copyWith(
        currentStep: CurrentStep.otp,
      );

      return true;
    } else {
      final dev = DeviceModel(
        id: 0,
        title: '',
        description: '',
        ip: state.ip!,
        port: int.parse(state.port!),
        token: '',
        addedOn: DateTime.now(),
        lastUsedOn: DateTime.now(),
        tokenUpdatedOn: DateTime.now(),
      );
      final res = await ref.read(localDbService).addDevice(
            device: dev,
          );

      return res;
    }
  }

  void onIpChanged(String value) {
    state = state.copyWith(
      ip: value,
    );
  }

  String? ipValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr('add_device_screen_ip_field_error_empty');
    }

    final ip = value.split('.');
    if (ip.length != 4) {
      return getStr('add_device_screen_ip_field_error_invalid');
    }

    for (final item in ip) {
      final num = int.tryParse(item);
      if (num == null || num < 0 || num > 255) {
        return getStr('add_device_screen_ip_field_error_invalid');
      }
    }

    return null;
  }

  void onPortChanged(String value) {
    state = state.copyWith(
      port: value,
    );
  }

  String? portValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr('add_device_screen_port_field_error_empty');
    }

    final num = int.tryParse(value);
    if (num == null || num < 0 || num > 65535) {
      return getStr('add_device_screen_port_field_error_invalid');
    }

    return null;
  }

  void onOtpChanged(String value) {
    state = state.copyWith(
      otp: value,
    );
  }

  // otp is a 6 digit number
  String? otpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr('add_device_screen_otp_field_error_empty');
    }

    final num = int.tryParse(value);
    if (num == null || num < 0 || num > 999999) {
      return getStr('add_device_screen_otp_field_error_invalid');
    }

    return null;
  }
}
