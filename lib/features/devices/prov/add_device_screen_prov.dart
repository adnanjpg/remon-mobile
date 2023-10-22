import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/add_device_screen_state.dart';

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

  void onSubmitBtnPressed() {
    state = state.copyWith(
      currentStep: CurrentStep.otp,
    );
  }
}
