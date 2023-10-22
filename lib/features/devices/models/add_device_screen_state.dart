import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_screen_state.freezed.dart';

enum CurrentStep {
  ip,
  otp;

  bool get isIp => this == CurrentStep.ip;
}

@freezed
class AddDeviceScreenState with _$AddDeviceScreenState {
  const AddDeviceScreenState._();

  const factory AddDeviceScreenState({
    required GlobalKey<FormState> formKey,
    required CurrentStep currentStep,
    required String? ip,
    required String? port,
    required String? otp,
  }) = _AddDeviceScreenState;

  factory AddDeviceScreenState.initial() => AddDeviceScreenState(
        formKey: GlobalKey<FormState>(),
        currentStep: CurrentStep.ip,
        ip: null,
        port: null,
        otp: null,
      );

  bool get viewIpField => currentStep.isIp;
  bool get viewPortField => currentStep.isIp;
  bool get viewOtpField => !currentStep.isIp;
}
