import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:remixicon/remixicon.dart";
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import '../../../utils/utils.dart';
import '../prov/bottom_bar_prov.dart';

class BottomNavScreen extends ConsumerWidget {
  const BottomNavScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomBarStateProvider);
    final notifier = ref.read(bottomBarStateProvider.notifier);

    return Scaffold(
      body: _Bod(),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).bottomBarBgColor,
          selectedItemColor: Theme.of(context).bottomBarSelectedItemColor,
          type: BottomNavigationBarType.fixed,
          onTap: notifier.onBottomBarTap,
          currentIndex: state.bottomBarIndex.index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                state.bottomBarIndex.isHome ? Remix.home_fill : Remix.home_line,
              ),
              label: getStr(LocaleKeys.bottom_bar_items_home),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                state.bottomBarIndex.isSettings
                    ? Remix.settings_3_fill
                    : Remix.settings_3_line,
              ),
              label: getStr(LocaleKeys.bottom_bar_items_settings),
            ),
          ],
        ),
      ),
    );
  }
}

class _Bod extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomBarStateProvider);

    return AnimatedOpacity(
      opacity: state.getOpacity,
      duration: fadeDuration,
      child: state.screen,
    );
  }
}
