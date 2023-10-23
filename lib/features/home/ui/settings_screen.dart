import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/home/prov/settings_prov.dart';
import 'package:remon_mobile/services/local_db_service.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import '../../../ui/widgets/btns/primary_btn.dart';
import '../../../ui/widgets/btns/text_btn.dart';
import '../../../utils/utils.dart';
import '../../devices/models/device_model.dart';

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
              getStr('settings_screen_title'),
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
                    getStr('settings_screen_device_list_no_data'),
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
                    text: getStr('settings_screen_add_device_button'),
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

class _DeviceItem extends StatelessWidget {
  final DeviceModel model;
  const _DeviceItem({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Consumer(
                builder: (context, ref, _) {
                  final notifier = ref.watch(settingsStateProvider.notifier);
                  return TextBtn(
                    eventName: 'configure_device',
                    text:
                        getStr('settings_screen_device_item_configure_button'),
                    onPressed: () {
                      notifier.onConfigureDevicePressed(
                        context: context,
                        device: model,
                      );
                    },
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
    );
  }
}
