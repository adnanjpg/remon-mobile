import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import '../../../ui/widgets/btns/text_btn.dart';
import '../../../utils/utils.dart';

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
    return Container(
      margin: defPaddingAll,
      child: Column(
        children: [
          Text(
            getStr('settings_screen_title'),
            style: TextStyle(
              fontSize: 32,
              fontWeight: Theme.of(context).fontWeightBold,
            ),
          ),
          const _DevicesList(),
        ],
      ),
    );
  }
}

class _FakeDeviceModel {
  final String title;
  final String desc;
  final String ip;
  final String port;

  const _FakeDeviceModel({
    required this.title,
    required this.desc,
    required this.ip,
    required this.port,
  });

  String get ipWPort => '$ip:$port';
}

final _allDevs = [
  const _FakeDeviceModel(
    title: 'Device 1',
    desc: 'Device 1 description',
    ip: '192.333.44.99',
    port: '1234',
  ),
  _FakeDeviceModel(
    title: 'Device 2',
    desc: 'Device 2 description' * 10,
    ip: '192.333.44.22',
    port: '3000',
  ),
];

class _DevicesList extends StatelessWidget {
  const _DevicesList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: _allDevs.map(
            (dev) {
              return _DeviceItem(
                model: dev,
              );
            },
          ).joinWidgetList(heightSizedBoxIndex),
        ),
        // PrimaryBtn.medium(
        //   eventName: eventName,
        // ),
      ],
    );
  }
}

class _DeviceItem extends StatelessWidget {
  final _FakeDeviceModel model;
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
              TextBtn(
                eventName: 'configure_device',
                text: getStr('settings_screen_device_item_configure_button'),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            model.desc,
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
