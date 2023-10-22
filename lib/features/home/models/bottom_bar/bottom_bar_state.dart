import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ui/home_screen.dart';
import '../../ui/settings_screen.dart';
import 'bottom_bar_index.dart';

part 'bottom_bar_state.freezed.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const BottomBarState._();

  factory BottomBarState({
    required BottomBarIndex bottomBarIndex,
    required bool isFadingOut,
    required bool isFadingIn,
  }) = _BottomBarState;

  factory BottomBarState.initial() => BottomBarState(
        bottomBarIndex: BottomBarIndex.home,
        isFadingOut: false,
        isFadingIn: false,
      );

  double get getOpacity => isFadingOut
      ? 0.0
      : isFadingIn
          ? 1.0
          : 1.0;

  Widget get screen {
    switch (bottomBarIndex) {
      case BottomBarIndex.home:
        return const HomeScreen();
      case BottomBarIndex.settings:
        return const SettingsScreen();
    }
  }
}
