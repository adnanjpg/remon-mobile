import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_disk_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_hardware_info_model.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';

class DiskStatusDataWidget extends ConsumerWidget {
  const DiskStatusDataWidget({
    required this.infoModels,
    super.key,
  });

  final List<DiskInfoModel> infoModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverDiskStatus = ref.watch(serverDiskStatusFutureProv);

    return Column(
      children: [
        ExpansionTile(
          title: Text(
            getStr(LocaleKeys.disk_status_graph_title),
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              [
                getStr(LocaleKeys.disk_status_graph_dets_names_list),
                infoModels.map((e) => e.name).join(', '),
              ].join(': '),
            ),
          ].joinWidgetList(
            (_) => const SizedBox(
              height: defPaddingSize,
            ),
          ),
        ),
        serverDiskStatus.when(
          error: ErrWidget.new,
          loading: LoadingWidget.new,
          data: (data) {
            if (data == null) {
              return const SizedBox();
            }

            return _Graphs(
              model: data,
              infoModels: infoModels,
            );
          },
        ),
      ].joinWidgetList(
        (_) => const SizedBox(
          height: defPaddingSize,
        ),
      ),
    );
  }
}

class _Graphs extends StatelessWidget {
  const _Graphs({
    required this.model,
    required this.infoModels,
  });

  final ServerDiskStatusModel model;
  final List<DiskInfoModel> infoModels;

  @override
  Widget build(BuildContext context) {
    final disksTotal = infoModels.map(
      (infoModel) {
        return (
          diskId: infoModel.diskId,
          total: infoModel.totalSpace,
        );
      },
    );

    final data = model.frames.map(
      (frame) {
        return frame.usagePercent(disksTotal);
      },
    ).toList();

    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).chartBorderColor,
          width: 2,
        ),
      ),
      child: Sparkline(
        max: 100,
        min: 0,
        fillMode: FillMode.above,
        backgroundColor: Theme.of(context).bgColor,
        fillColor: Theme.of(context).fillColor,
        data: data,
      ),
    );
  }
}
