import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/devices/models/pick_from_options.dart';
import 'package:remon_mobile/features/devices/models/suggested_device_desc_model.dart';
import 'package:uuid/uuid.dart';

part 'add_device_screen_state.freezed.dart';

enum CurrentStep {
  ip,
  otp,
  config;

  bool get isIp => this == CurrentStep.ip;
  bool get isOtp => this == CurrentStep.otp;
  bool get isConfig => this == CurrentStep.config;

  bool get isLast => index == CurrentStep.values.length - 1;
}

@freezed
class AddDeviceScreenState with _$AddDeviceScreenState {
  const factory AddDeviceScreenState({
    required GlobalKey<FormState> formKey,
    required CurrentStep currentStep,
    required String deviceUUID,
    required int? deviceId,
    required String? ip,
    required String? port,
    required String? otp,
    required String? title,
    required String? desc,
    required double? ramAlertRange,
    required double? cpuAlertRange,
    required double? storageAlertRange,
    required String? token,
    required SuggestedDeviceDescModel? suggestedDeviceDesc,
    required OtpUrlPickFromOptions otpUrlPickFromOptions,
    required String? otpUrl,
  }) = _AddDeviceScreenState;
  const AddDeviceScreenState._();

  factory AddDeviceScreenState.initial() => AddDeviceScreenState(
        formKey: GlobalKey<FormState>(),
        currentStep: CurrentStep.ip,
        deviceUUID: const Uuid().v4(),
        deviceId: null,
        ip: null,
        port: null,
        otp: null,
        title: null,
        desc: null,
        ramAlertRange: null,
        cpuAlertRange: null,
        storageAlertRange: null,
        token: null,
        suggestedDeviceDesc: null,
        otpUrlPickFromOptions: OtpUrlPickFromOptions.camera,
        otpUrl: null,
      );

  AddDeviceScreenState copyWithDeviceModel({
    required DeviceModel device,
  }) {
    return copyWith(
      deviceId: device.id,
      title: device.title,
      desc: device.description,
      ip: device.ip,
      port: device.port.toString(),
      ramAlertRange: device.ramAlertRange,
      cpuAlertRange: device.cpuAlertRange,
      storageAlertRange: device.diskAlertRange,
      token: device.token,
    );
  }

  bool get isHttps => false;
  String get url {
    final ipWPort = '$ip:$port';
    return isHttps ? 'https://$ipWPort' : 'http://$ipWPort';
  }

  DeviceModel toDeviceModel() {
    return DeviceModel.create(
      id: deviceId,
      deviceUUID: deviceUUID,
      title: title,
      description: desc,
      ip: ip,
      port: port != null ? int.parse(port!) : null,
      ramAlertRange: ramAlertRange,
      cpuAlertRange: cpuAlertRange,
      storageAlertRange: storageAlertRange,
      token: token,
    );
  }

  double get _minRangeValue => 0;
  double get _maxRangeValue => 100;

  double get minRamRangeValue => _minRangeValue;
  double get maxRamRangeValue => _maxRangeValue;

  double get minCpuRangeValue => _minRangeValue;
  double get maxCpuRangeValue => _maxRangeValue;

  double get minStorageRangeValue => _minRangeValue;
  double get maxStorageRangeValue => _maxRangeValue;

  bool get viewIpField => currentStep.isIp;
  bool get viewPortField => currentStep.isIp;

  bool get viewOtpCameraScanner =>
      currentStep.isOtp && otpUrlPickFromOptions.isCamera;
  bool get viewOtpUrlField =>
      currentStep.isOtp && otpUrlPickFromOptions.isInputUrl;
  bool get viewOtpField =>
      currentStep.isOtp && otpUrlPickFromOptions.isExternalApp;

  bool get viewTitleField => currentStep.isConfig;
  bool get viewDescField => currentStep.isConfig;
  bool get viewRamRangeField => currentStep.isConfig;
  bool get viewCpuRangeField => currentStep.isConfig;
  bool get viewStorageRangeField => currentStep.isConfig;
}
