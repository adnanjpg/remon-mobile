import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/devices/prov/add_device_screen_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/btns/primary_btn.dart';
import 'package:remon_mobile/ui/widgets/primary_field.dart';
import 'package:remon_mobile/ui/widgets/primary_slider.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';

class AddDeviceScreen extends ConsumerStatefulWidget {
  const AddDeviceScreen({
    required this.device,
    super.key,
  });
  final DeviceModel? device;

  @override
  ConsumerState<AddDeviceScreen> createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends ConsumerState<AddDeviceScreen> {
  @override
  void initState() {
    super.initState();

    final dev = widget.device;
    if (dev != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          ref.read(addDeviceScreenProv.notifier).init(
                device: dev,
              );
        },
      );
    }
  }

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
                          text: getStr(
                            LocaleKeys.add_device_screen_submit_btn_title,
                          ),
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
    final isOtp = form.currentStep.isOtp;
    final isConfig = form.currentStep.isConfig;

    final ipWidgets = [
      Text(
        getStr(LocaleKeys.add_device_screen_title),
        style: Theme.of(context).pageTitle,
      ),
      Text(
        getStr(LocaleKeys.add_device_screen_desc),
        style: Theme.of(context).pageDesc,
      ),
    ];
    final otpWidgets = [
      Text(
        getStr(LocaleKeys.add_device_screen_otp_title),
        style: Theme.of(context).pageTitle,
      ),
      Text(
        getStr(LocaleKeys.add_device_screen_otp_desc),
        style: Theme.of(context).pageDesc,
      ),
    ];
    final configWidgets = [
      Text(
        getStr(LocaleKeys.add_device_screen_config_title),
        style: Theme.of(context).pageTitle,
      ),
    ];

    final List<Widget> children;
    if (isIp) {
      children = ipWidgets;
    } else if (isOtp) {
      children = otpWidgets;
    } else if (isConfig) {
      children = configWidgets;
    } else {
      children = [];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children.joinWidgetList(heightSizedBoxIndex),
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
        //
        if (form.viewIpField) ...[
          PrimaryField(
            labelText: getStr(LocaleKeys.add_device_screen_ip_field),
            value: form.ip,
            onChanged: notifier.onIpChanged,
            validator: notifier.ipValidator,
          ),
        ],
        if (form.viewPortField) ...[
          PrimaryField(
            labelText: getStr(LocaleKeys.add_device_screen_port_field),
            value: form.port,
            onChanged: notifier.onPortChanged,
            validator: notifier.portValidator,
          ),
        ],
        //
        if (form.viewOtpField) ...[
          PrimaryField(
            labelText: getStr(LocaleKeys.add_device_screen_otp_field),
            value: form.otp,
            onChanged: notifier.onOtpChanged,
            validator: notifier.otpValidator,
          ),
        ],
        //
// viewRamRangeField
// viewCpuRangeField
// viewStorageRangeField
        if (form.viewTitleField) ...[
          PrimaryField(
            labelText: getStr(LocaleKeys.add_device_screen_title_field),
            value: form.title,
            onChanged: notifier.onTitleChanged,
            validator: notifier.titleValidator,
          ),
        ],
        if (form.viewDescField) ...[
          PrimaryField(
            labelText: getStr(LocaleKeys.add_device_screen_desc_field),
            value: form.desc,
            minLines: 3,
            onChanged: notifier.onDescChanged,
            validator: notifier.descValidator,
          ),
        ],
        if (form.viewRamRangeField) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getStr(LocaleKeys.add_device_screen_ram_field_title),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              Text(
                getStrArgs(
                  LocaleKeys.add_device_screen_ram_field_desc,
                  args: [
                    (form.ramAlertRange ?? 0).toInt().toString(),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              PrimarySlider(
                value: form.ramAlertRange,
                onChanged: notifier.onRamRangeChanged,
                minValue: form.minRamRangeValue,
                maxValue: form.maxRamRangeValue,
              ),
            ],
          ),
        ],
        if (form.viewCpuRangeField) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getStr(LocaleKeys.add_device_screen_cpu_field_title),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              Text(
                getStrArgs(
                  LocaleKeys.add_device_screen_cpu_field_desc,
                  args: [
                    (form.cpuAlertRange ?? 0).toInt().toString(),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              PrimarySlider(
                value: form.cpuAlertRange,
                onChanged: notifier.onCpuRangeChanged,
                minValue: form.minCpuRangeValue,
                maxValue: form.maxCpuRangeValue,
              ),
            ],
          ),
        ],
        if (form.viewStorageRangeField) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getStr(LocaleKeys.add_device_screen_storage_field_title),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              Text(
                getStrArgs(
                  LocaleKeys.add_device_screen_storage_field_desc,
                  args: [
                    (form.storageAlertRange ?? 0).toInt().toString(),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: Theme.of(context).fontWeightLight,
                ),
              ),
              PrimarySlider(
                value: form.storageAlertRange,
                onChanged: notifier.onStorageRangeChanged,
                minValue: form.minStorageRangeValue,
                maxValue: form.maxStorageRangeValue,
              ),
            ],
          ),
        ],

//
      ].joinWidgetList(heightSizedBoxIndex),
    );
  }
}
