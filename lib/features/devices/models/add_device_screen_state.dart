import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';

part 'add_device_screen_state.freezed.dart';

enum CurrentStep {
  ip,
  otp,
  config;

  bool get isIp => this == CurrentStep.ip;
  bool get isOtp => this == CurrentStep.otp;
  bool get isConfig => this == CurrentStep.config;

  bool get isLast => this.index == CurrentStep.values.length - 1;
}

@freezed
class AddDeviceScreenState with _$AddDeviceScreenState {
  const AddDeviceScreenState._();

  const factory AddDeviceScreenState({
    required GlobalKey<FormState> formKey,
    required CurrentStep currentStep,
    required int? deviceId,
    required String? ip,
    required String? port,
    required String? otp,
    required String? title,
    required String? desc,
    required double? ramAlertRange,
    required double? cpuAlertRange,
    required double? storageAlertRange,
  }) = _AddDeviceScreenState;

  factory AddDeviceScreenState.initial() => AddDeviceScreenState(
        formKey: GlobalKey<FormState>(),
        currentStep: CurrentStep.ip,
        deviceId: null,
        ip: null,
        port: null,
        otp: null,
        title: null,
        desc: null,
        ramAlertRange: null,
        cpuAlertRange: null,
        storageAlertRange: null,
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
      storageAlertRange: device.storageAlertRange,
    );
  }

  DeviceModel toDeviceModel() {
    return DeviceModel.create(
      id: deviceId,
      title: title,
      description: desc,
      ip: ip,
      port: port != null ? int.parse(port!) : null,
      ramAlertRange: ramAlertRange,
      cpuAlertRange: cpuAlertRange,
      storageAlertRange: storageAlertRange,
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

  bool get viewOtpField => currentStep.isOtp;

  bool get viewTitleField => currentStep.isConfig;
  bool get viewDescField => currentStep.isConfig;
  bool get viewRamRangeField => currentStep.isConfig;
  bool get viewCpuRangeField => currentStep.isConfig;
  bool get viewStorageRangeField => currentStep.isConfig;
}
