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
    final serverDiskStatusFuture = ref.watch(serverDiskStatusFutureProv);
    final serverDiskStatuses = ref.watch(serverDiskStatusesProv);

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
        serverDiskStatusFuture.when(
          error: ErrWidget.new,
          loading: LoadingWidget.new,
          data: (_) {
            return _Graphs(
              models: serverDiskStatuses,
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
    required this.models,
    required this.infoModels,
  });

  final List<ServerDiskStatusModel> models;
  final List<DiskInfoModel> infoModels;

  @override
  Widget build(BuildContext context) {
    final frames = models.frames;
    final disksTotal = infoModels.map(
      (infoModel) {
        return (
          diskId: infoModel.diskId,
          total: infoModel.totalSpace,
        );
      },
    );

    final data = frames.map(
      (frame) {
        return frame.usagePercent(disksTotal);
      },
    ).toList();

    logger.d(
      'displayed disk frame count: ${frames.length}',
    );

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
