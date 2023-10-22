import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/prov/add_device_screen_prov.dart';
import 'package:remon_mobile/ui/widgets/btns/primary_btn.dart';
import 'package:remon_mobile/ui/widgets/primary_field.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';

class AddDeviceScreen extends StatelessWidget {
  const AddDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: defPaddingAll,
        child: Consumer(
          builder: (context, ref, child) {
            final form = ref.watch(addDeviceScreenProv);
            return Form(
              key: form.formKey,
              child: child!,
            );
          },
          child: ListView(
            children: [
              const _Titles(),
              const _Fields(),
              Consumer(
                builder: (context, ref, _) {
                  final notifier = ref.watch(addDeviceScreenProv.notifier);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: PrimaryBtn(
                          isExpanded: true,
                          eventName: 'add_device_screen_btn',
                          text: getStr('add_device_screen_submit_btn_title'),
                          onPressed: () {
                            notifier.onSubmitBtnPressed(context: context);
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ].joinWidgetList(doubleHeightSizedBoxIndex),
          ),
        ),
      ),
    );
  }
}

class _Titles extends ConsumerWidget {
  const _Titles();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(addDeviceScreenProv);
    final isIp = form.currentStep.isIp;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...((isIp)
            ? [
                Text(
                  getStr('add_device_screen_title'),
                  style: Theme.of(context).pageTitle,
                ),
                Text(
                  getStr('add_device_screen_desc'),
                  style: Theme.of(context).pageDesc,
                ),
              ]
            : [
                Text(
                  getStr('add_device_screen_otp_title'),
                  style: Theme.of(context).pageTitle,
                ),
                Text(
                  getStr('add_device_screen_otp_desc'),
                  style: Theme.of(context).pageDesc,
                ),
              ])
      ].joinWidgetList(heightSizedBoxIndex),
    );
  }
}

class _Fields extends ConsumerWidget {
  const _Fields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(addDeviceScreenProv);
    final notifier = ref.watch(addDeviceScreenProv.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (form.viewIpField) ...[
          PrimaryField(
            labelText: getStr('add_device_screen_ip_field'),
            value: form.ip,
            onChanged: notifier.onIpChanged,
            validator: notifier.ipValidator,
          ),
        ],
        if (form.viewPortField) ...[
          PrimaryField(
            labelText: getStr('add_device_screen_port_field'),
            value: form.port,
            onChanged: notifier.onPortChanged,
            validator: notifier.portValidator,
          ),
        ],
        if (form.viewOtpField) ...[
          PrimaryField(
            labelText: getStr('add_device_screen_otp_field'),
            value: form.otp,
            onChanged: notifier.onOtpChanged,
            validator: notifier.otpValidator,
          ),
        ],
      ].joinWidgetList(heightSizedBoxIndex),
    );
  }
}