import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/home/models/home_state.dart';
import 'package:remon_mobile/features/home/prov/bottom_bar_prov.dart';

final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
  HomeStateNotifier.new,
);

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier(this.ref) : super(HomeState.initial());
  final Ref ref;

  void onSwitchDevicePressed() {
    ref.read(bottomBarStateProvider.notifier).switchToSettings();
  }
}
