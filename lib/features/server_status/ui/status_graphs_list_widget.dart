import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/features/server_status/ui/cpu_status_data_widget.dart';
import 'package:remon_mobile/features/server_status/ui/disk_status_data_widget.dart';
import 'package:remon_mobile/features/server_status/ui/mem_status_data_widget.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/utils.dart';

class StatusGraphsListWidget extends ConsumerStatefulWidget {
  const StatusGraphsListWidget({super.key});

  @override
  ConsumerState<StatusGraphsListWidget> createState() =>
      _StatusGraphsListWidgetState();
}

class _StatusGraphsListWidgetState
    extends ConsumerState<StatusGraphsListWidget> {
  @override
  void initState() {
    super.initState();

    ref.read(serverStatusFetchingTimeRangeProv.notifier).startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final serverHardwawreInfo = ref.watch(serverHardwareInfoFutureProv);

    return serverHardwawreInfo.when(
      error: ErrWidget.new,
      loading: LoadingWidget.new,
      data: (data) {
        if (data == null) {
          return Text(
            getStr(LocaleKeys.failed_to_fetch_server_status_error),
          );
        }

        return Column(
          children: [
            CpuStatusDataWidget(
              infoModels: data.cpuInfo,
            ),
            DiskStatusDataWidget(
              infoModels: data.disksInfo,
            ),
            MemStatusDataWidget(
              infoModels: data.memInfo,
            ),
          ].joinWidgetList(
            (_) => const SizedBox(
              height: doubleDefPaddingSize,
            ),
          ),
        );
      },
    );
  }
}
