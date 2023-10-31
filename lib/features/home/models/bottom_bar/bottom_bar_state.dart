import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remon_mobile/features/home/models/bottom_bar/bottom_bar_index.dart';
import 'package:remon_mobile/features/home/ui/home_screen.dart';
import 'package:remon_mobile/features/home/ui/settings_screen.dart';

part 'bottom_bar_state.freezed.dart';

@freezed
class BottomBarState with _$BottomBarState {
  factory BottomBarState({
    required BottomBarIndex bottomBarIndex,
    required bool isFadingOut,
    required bool isFadingIn,
  }) = _BottomBarState;
  const BottomBarState._();

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
