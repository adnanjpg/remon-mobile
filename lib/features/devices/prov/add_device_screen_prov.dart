import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading/loading.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:remon_mobile/features/devices/models/add_device_screen_state.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/devices/models/pick_from_options.dart';
import 'package:remon_mobile/features/two_fa/models/account_model.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/services/api_service.dart';
import 'package:remon_mobile/services/local_db_service/local_db_service.dart';
import 'package:remon_mobile/ui/widgets/snackbars.dart';
import 'package:remon_mobile/utils/otp_extensions.dart';
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

  Future<String?> _validate({
    required BuildContext context,
  }) async {
    if (state.formKey.currentState?.validate() != true) {
      return '';
    }

    if (state.currentStep.isOtp &&
        state.otpUrlPickFromOptions.isOptionUrlManaged &&
        (state.otpUrl?.isEmpty == true || state.otpUrl == null)) {
      return getStr(
        LocaleKeys.add_device_screen_validator_otp_url_error_invalid,
      );
    }

    return null;
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
  }

  Future<bool> submitIpStep({
    required BuildContext context,
  }) async {
    final api = ref.read(
      apiServiceProvExternalUrl(state.url),
    );
    final deviceId = state.deviceUUID;

    final isQrShown = await api.getOtpQr(deviceId: deviceId);

    if (isQrShown != true) {
      return false;
    }

    Loading.unload();

    return true;
  }

  Future<bool> submitOtpStep({
    required BuildContext context,
  }) async {
    final api = ref.read(
      apiServiceProvExternalUrl(state.url),
    );
    final deviceId = state.deviceUUID;

    String otp;

    switch (state.otpUrlPickFromOptions) {
      case OtpUrlPickFromOptions.camera:
      case OtpUrlPickFromOptions.inputUrl:
        {
          final otpUrl = state.otpUrl;
          if (otpUrl == null) {
            logger.e('otpUrl is null');
            return false;
          }
          final dbProv = ref.read(localDbService);
          final acc = AccountModel.fromUrl(
            otpUrl,
          );
          if (acc == null) {
            logger.e('acc is null');
            return false;
          }

          final addedAcc = await dbProv.addAccount(account: acc);

          if (addedAcc == null) {
            logger.e('addedAcc is null');
            return false;
          }

          otp = acc.totpString;
        }

      case OtpUrlPickFromOptions.externalApp:
        {
          final enteredOtp = state.otp;
          if (enteredOtp == null) {
            logger.e('otp is null');
            return false;
          }
          otp = enteredOtp;
        }
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

    Loading.unload();

    setGlobalSelectedDevice();

    await setSuggestedDeviceDesc();

    return true;
  }

  Future<bool> submitConfigStep({
    required BuildContext context,
  }) async {
    final api = ref.read(
      apiServiceProvExternalUrl(state.url),
    );

    // TODO(adnanjpg): handle on token refresh
    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken == null) {
      logger.e('failed to get fcm token');
    }

    final reqModel = UpdateDeviceInfoRequestModel.fromDeviceModel(
      device: state.toDeviceModel(),
      fcmToken: fcmToken,
    );

    final isUpdated = await api.updateDeviceInfo(
      model: reqModel,
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

    Loading.unload();

    setGlobalSelectedDevice();

    return true;
  }

  bool _isSubmitting = false;
  Future<bool> onSubmitBtnPressed({
    required BuildContext context,
  }) async {
    if (_isSubmitting) {
      return false;
    }

    _isSubmitting = true;

    final val = await _validate(
      context: context,
    );
    if (val != null) {
      ref.read(toastMachineProv).showErrorToast(
            context: context,
            title: val,
            message: '',
          );
      _isSubmitting = false;
      return false;
    }

    Loading.load();

    var sub = false;

    if (state.currentStep.isIp) {
      sub = await submitIpStep(
        context: context,
      );
    }

    if (state.currentStep.isOtp) {
      sub = await submitOtpStep(
        context: context,
      );
    }

    if (state.currentStep.isConfig) {
      sub = await submitConfigStep(
        context: context,
      );
    }

    _isSubmitting = false;
    Loading.unload();

    if (sub) {
      setToNextStep(context: context);
    }

    return sub;
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

  String? otpUrlValidator(String? value) {
    if (value == null || value.isEmpty) {
      return getStr(LocaleKeys.add_device_screen_otp_url_field_error_empty);
    }

    if (!value.isValidTotpUrl) {
      return getStr(LocaleKeys.add_device_screen_otp_url_field_error_invalid);
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

  void setOtpUrlPickFromOptions(OtpUrlPickFromOptions value) {
    state = state.copyWith(
      otpUrlPickFromOptions: value,
    );
  }

  void onOtpUrlChanged(String value) {
    state = state.copyWith(
      otpUrl: value,
    );
  }

  String? detectedURL;

  void onOtpUrlCameraDetected({
    required BuildContext context,
    required BarcodeCapture capture,
  }) {
    final barcodes = capture.barcodes;
    final barcode = barcodes.isEmpty ? null : barcodes.first;
    final url = barcode?.rawValue ?? '';

    if (url.isEmpty) {
      return;
    }

    if (url == detectedURL) {
      return;
    }

    detectedURL = url;

    if (!url.isValidTotpUrl) {
      ref.read(toastMachineProv).showErrorToast(
            context: context,
            title: getStr(
              LocaleKeys
                  .add_device_screen_validator_camera_otp_url_error_invalid,
            ),
            message: '',
          );

      return;
    }

    state = state.copyWith(
      otpUrl: url,
    );

    onSubmitBtnPressed(
      context: context,
    );
  }
}
