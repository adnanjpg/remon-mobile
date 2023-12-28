import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/home/prov/home_prov.dart';
import 'package:remon_mobile/features/server_status/ui/status_graphs_list_widget.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/prov/selected_device_prov.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:styled_text/tags/styled_text_tag_action.dart';
import 'package:styled_text/widgets/styled_text.dart';

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
    return SingleChildScrollView(
      child: Container(
        margin: defPaddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getStr(LocaleKeys.home_screen_title),
                  style: Theme.of(context).pageTitle,
                ),
                Consumer(
                  builder: (context, ref, _) {
                    final dev = ref.watch(selectedDeviceProv);

                    final notifier = ref.read(homeStateProvider.notifier);

                    return StyledText(
                      text: getStrArgs(
                        LocaleKeys.home_screen_desc,
                        args: [
                          dev.title,
                        ],
                      ),
                      tags: {
                        'click': StyledTextActionTag(
                          style: Theme.of(context).pageSubDesc.copyWith(
                                color: Theme.of(context)
                                    .homeChangeDeviceButtonColor,
                              ),
                          (_, __) {
                            notifier.onSwitchDevicePressed();
                          },
                        ),
                      },
                      style: Theme.of(context).pageSubDesc,
                    );
                  },
                ),
              ],
            ),
            const StatusGraphsListWidget(),
          ].joinWidgetList(doubleHeightSizedBoxIndex),
        ),
      ),
    );
  }
}
