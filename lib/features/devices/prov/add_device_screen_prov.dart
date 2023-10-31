import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading/loading.dart';
import 'package:remon_mobile/features/devices/models/add_device_screen_state.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/services/api_service.dart';
import 'package:remon_mobile/services/local_db_service.dart';
import 'package:remon_mobile/utils/prov/selected_device_prov.dart';
import 'package:remon_mobile/utils/route_table.dart';
import 'package:remon_mobile/utils/utils.dart';

final addDeviceScreenProv = StateNotifierProvider.autoDispose<
    _AddDeviceScreenStateNotifier, AddDeviceScreenState>(
  _AddDeviceScreenStateNotifier.new,
);

class _AddDeviceScreenStateNotifier
    extends StateNotifier<AddDeviceScreenState> {
  _AddDeviceScreenStateNotifier(this.ref)
      : super(
          AddDeviceScreenState.initial(),
        );
  final Ref ref;

  void init({
    required DeviceModel device,
  }) {
    state = state
        .copyWithDeviceModel(
          device: device,
        )
        .copyWith(
          currentStep: CurrentStep.config,
        );

    setGlobalSelectedDevice();

    setSuggestedDeviceDesc();
  }

  Future<bool> _validate({
    required BuildContext context,
  }) async {
    if (state.formKey.currentState?.validate() != true) {
      return false;
    }

    return true;
  }

  void setGlobalSelectedDevice() {
    ref.read(selectedDeviceProv.notifier).state = state.toDeviceModel();
  }

  Future<void> setSuggestedDeviceDesc() async {
    final api = ref.watch(apiServiceProv);
    final suggested = await api.getSuggestedDeviceDesc();

    state = state.copyWith(
      suggestedDeviceDesc: suggested,
      title: suggested?.name,
      desc: suggested?.description,
    );
  }

  void setToNextStep({
    required BuildContext context,
  }) {
    final currStep = state.currentStep;
    if (currStep.isLast) {
      GoRouter.of(context).pop();

      return;
    }
    state = state.copyWith(
      currentStep: CurrentStep.values[state.currentStep.index + 1],
    );

    setGlobalSelectedDevice();
  }

  Future<bool> onSubmitBtnPressed({
    required BuildContext context,
  }) async {
    if (await _validate(context: context) != true) {
      return false;
    }

    Loading.load();

    final api = ref.read(
      apiServiceProvExternalUrl(state.url),
    );
    final deviceId = state.deviceUUID;

    if (state.currentStep.isIp) {
      final isQrShown = await api.getOtpQr(deviceId: deviceId);

      if (isQrShown != true) {
        return false;
      }

      setToNextStep(context: context);

      Loading.unload();

      return true;
    }

    if (state.currentStep.isOtp) {
      final otp = state.otp;
      if (otp == null) {
        logger.e('otp is null');
        return false;
      }

      final token = await api.login(
        deviceId: deviceId,
        otp: otp,
      );

      if (token == null) {
        return false;
      }

      state = state.copyWith(
        token: token,
      );

      debugPrint('token: $token');

      final dev = state.toDeviceModel();
      final res = await ref.read(localDbService).updateDevice(
            device: dev,
          );

      if (res == null) {
        return false;
      }

      state = state.copyWith(deviceId: res);

      setToNextStep(context: context);

      Loading.unload();

      await setSuggestedDeviceDesc();

      return true;
    }

    if (state.currentStep.isConfig) {
      final isUpdated = await api.updateDeviceInfo(
        model: UpdateDeviceInfoRequestModel.fromDeviceModel(
          state.toDeviceModel(),
        ),
      );

      if (isUpdated != true) {
        return false;
      }

      final dev = state.toDeviceModel();
      final res = await ref.read(localDbService).updateDevice(
            device: dev,
          );

      if (res == null) {
        return false;
      }

      setToNextStep(context: context);

      Loading.unload();

      return true;
    }

    Loading.unload();

    return false;
  }

  //
  void onIpChanged(String value) {
    state = state.copyWith(
      ip: value,
    );
  }

  String? ipValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_ip_field_error_empty);
    }

    final ip = value.split('.');
    if (ip.length != 4) {
      return getStr(LocaleKeys.add_device_screen_ip_field_error_invalid);
    }

    for (final item in ip) {
      final num = int.tryParse(item);
      if (num == null || num < 0 || num > 255) {
        return getStr(LocaleKeys.add_device_screen_ip_field_error_invalid);
      }
    }

    return null;
  }

  //
  void onPortChanged(String value) {
    state = state.copyWith(
      port: value,
    );
  }

  String? portValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_port_field_error_empty);
    }

    final num = int.tryParse(value);
    if (num == null || num < 0 || num > 65535) {
      return getStr(LocaleKeys.add_device_screen_port_field_error_invalid);
    }

    return null;
  }

  //
  void onOtpChanged(String value) {
    state = state.copyWith(
      otp: value,
    );
  }

  // otp is a 6 digit number
  String? otpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_otp_field_error_empty);
    }

    final num = int.tryParse(value);
    if (num == null || num < 0 || num > 999999) {
      return getStr(LocaleKeys.add_device_screen_otp_field_error_invalid);
    }

    return null;
  }

  //
  void onTitleChanged(String value) {
    state = state.copyWith(
      title: value,
    );
  }

  String? titleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_title_field_error_empty);
    }

    return null;
  }

  //
  void onDescChanged(String value) {
    state = state.copyWith(
      desc: value,
    );
  }

  String? descValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_desc_field_error_empty);
    }

    return null;
  }

  //
  void onRamRangeChanged(double? value) {
    state = state.copyWith(
      ramAlertRange: value,
    );
  }

  //
  void onCpuRangeChanged(double? value) {
    state = state.copyWith(
      cpuAlertRange: value,
    );
  }

  //
  void onStorageRangeChanged(double? value) {
    state = state.copyWith(
      storageAlertRange: value,
    );
  }
}
