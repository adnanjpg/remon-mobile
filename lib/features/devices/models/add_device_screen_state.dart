import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  bool get viewIpField => currentStep.isIp;
  bool get viewPortField => currentStep.isIp;

  bool get viewOtpField => currentStep.isOtp;

  bool get viewTitleField => currentStep.isConfig;
  bool get viewDescField => currentStep.isConfig;
  bool get viewRamRangeField => currentStep.isConfig;
  bool get viewCpuRangeField => currentStep.isConfig;
  bool get viewStorageRangeField => currentStep.isConfig;
}
