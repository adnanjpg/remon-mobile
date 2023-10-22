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
    required CurrentStep currentStep,
  }) = _AddDeviceScreenState;

  factory AddDeviceScreenState.initial() => const AddDeviceScreenState(
        currentStep: CurrentStep.ip,
      );

  bool get viewIpField => currentStep.isIp;
  bool get viewPortField => currentStep.isIp;
  bool get viewOtpField => !currentStep.isIp;
}
