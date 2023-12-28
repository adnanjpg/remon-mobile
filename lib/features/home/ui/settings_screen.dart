import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:remixicon/remixicon.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/home/prov/settings_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/services/local_db_service/local_db_service.dart';
import 'package:remon_mobile/ui/widgets/btns/primary_btn.dart';
import 'package:remon_mobile/ui/widgets/btns/text_btn.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

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
            Text(
              getStr(LocaleKeys.settings_screen_title),
              style: Theme.of(context).pageTitle,
            ),
            const _DevicesList(),
          ].joinWidgetList(doubleHeightSizedBoxIndex),
        ),
      ),
    );
  }
}

final devsProv = StreamProvider(
  (ref) => ref.watch(localDbService).watchAllDevices(),
);

class _DevicesList extends StatelessWidget {
  const _DevicesList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(
          builder: (context, ref, _) {
            final watcher = ref.watch(devsProv);
            return watcher.when(
              loading: LoadingWidget.new,
              error: ErrWidget.new,
              data: (data) {
                if (data.isEmpty) {
                  return Text(
                    getStr(LocaleKeys.settings_screen_device_list_no_data),
                  );
                }
                return Column(
                  children: data.map(
                    (dev) {
                      return _DeviceItem(
                        model: dev,
                      );
                    },
                  ).joinWidgetList(heightSizedBoxIndex),
                );
              },
            );
          },
        ),
        Consumer(
          builder: (context, ref, _) {
            final notifier = ref.watch(settingsStateProvider.notifier);

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: PrimaryBtn(
                    isExpanded: true,
                    eventName: 'add_device',
                    text: getStr(LocaleKeys.settings_screen_add_device_button),
                    onPressed: () =>
                        notifier.onAddDevicePressed(context: context),
                  ),
                ),
              ],
            );
          },
        ),
      ].joinWidgetList(heightSizedBoxIndex),
    );
  }
}

class _DeviceItem extends ConsumerWidget {
  const _DeviceItem({
    required this.model,
  });
  final DeviceModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(settingsStateProvider.notifier);

    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: ValueKey(model.id),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              notifier.onDeleteDevicePressed(
                context: context,
                device: model,
              );
            },
            backgroundColor:
                Theme.of(context).deviceItemSlidableDeleteActionBackgroundColor,
            foregroundColor: Colors.white,
            icon: Remix.delete_bin_6_line,
            borderRadius: BorderRadius.circular(13),
            autoClose: true,
            label: getStr(
              LocaleKeys.settings_screen_delete_device_button,
            ),
          ),
          SlidableAction(
            onPressed: (_) {
              notifier.onUseDevicePressed(
                context: context,
                device: model,
              );
            },
            backgroundColor:
                Theme.of(context).deviceItemSlidableUseActionBackgroundColor,
            foregroundColor: Colors.white,
            icon: Remix.arrow_left_right_line,
            borderRadius: BorderRadius.circular(13),
            autoClose: true,
            label: getStr(
              LocaleKeys.settings_screen_use_device_button,
            ),
          ),
        ],
      ),

      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).deviceItemBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: defPaddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: Theme.of(context).fontWeightMedium,
                        ),
                      ),
                      Text(
                        model.ipWPort,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: Theme.of(context).fontWeightBold,
                        ),
                      ),
                    ],
                  ),
                ),
                TextBtn(
                  eventName: 'configure_device',
                  text: getStr(
                    LocaleKeys.settings_screen_device_item_configure_button,
                  ),
                  onPressed: () {
                    notifier.onConfigureDevicePressed(
                      context: context,
                      device: model,
                    );
                  },
                ),
              ],
            ),
            Text(
              model.description,
              style: TextStyle(
                fontSize: 11,
                fontWeight: Theme.of(context).fontWeightLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
