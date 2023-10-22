import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import '../../../utils/utils.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defPaddingAll,
      child: Column(
        children: [
          Text(
            getStr('home_screen_title'),
            style: TextStyle(
              fontSize: 32,
              fontWeight: Theme.of(context).fontWeightBold,
            ),
          ),
        ],
      ),
    );
  }
}
