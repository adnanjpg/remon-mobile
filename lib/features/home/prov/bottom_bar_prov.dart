import 'package:remon_mobile/features/home/models/bottom_bar/bottom_bar_index.dart';
import 'package:remon_mobile/services/analytics_service.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/bottom_bar/bottom_bar_state.dart';

final bottomBarStateProvider =
    StateNotifierProvider.autoDispose<BottomBarStateNotifier, BottomBarState>(
  BottomBarStateNotifier.new,
);

class BottomBarStateNotifier extends StateNotifier<BottomBarState> {
  final Ref ref;
  BottomBarStateNotifier(this.ref) : super(BottomBarState.initial());

  void onBottomBarTap(int index) {
    // ref.read may fail, then our app would fail epically
    try {
      ref.read(fbAnalyticsProv).buttonPressed(
        'bottom_bar',
        'bottom_bar_tap',
        parameters: {
          'index': index,
          'the_same': index == state.bottomBarIndex.index,
        },
      );
    } catch (e) {
      logger.e(e);
    }

    if (index < 0 || index > BottomBarIndex.values.length) return;
    if (index == state.bottomBarIndex.index) return;

    final bottomEnum = BottomBarIndex.values[index];

    state = state.copyWith(isFadingOut: true);

    Future.delayed(
      fadeDuration,
      () {
        state = state.copyWith(
          bottomBarIndex: bottomEnum,
          isFadingOut: false,
          isFadingIn: true,
        );

        Future.delayed(
          fadeDuration,
          () {
            state = state.copyWith(
              isFadingIn: false,
            );
          },
        );
      },
    );
  }
}

const fadeDuration = Duration(
  milliseconds: 110,
);
