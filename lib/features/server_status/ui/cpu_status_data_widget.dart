import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_cpu_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_hardware_info_model.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';

class CpuStatusDataWidget extends ConsumerWidget {
  const CpuStatusDataWidget({
    required this.infoModels,
    super.key,
  });

  final List<CpuInfoModel> infoModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverCpuStatusFuture = ref.watch(serverCpuStatusFutureProv);
    final serverCpuStatuses = ref.watch(serverCpuStatusesProv);

    return Column(
      children: [
        ExpansionTile(
          title: Text(
            getStr(LocaleKeys.cpu_status_graph_title),
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: infoModels.map(
            (model) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    [
                      getStr(LocaleKeys.cpu_status_graph_dets_vendor_id),
                      model.vendorId,
                    ].join(': '),
                  ),
                  Text(
                    [
                      getStr(LocaleKeys.cpu_status_graph_dets_brand),
                      model.brand,
                    ].join(': '),
                  ),
                ].joinWidgetList(
                  (_) => const SizedBox(
                    height: quartDefPaddingSize,
                  ),
                ),
              );
            },
          ).joinWidgetList(
            (_) => const SizedBox(
              height: defPaddingSize,
            ),
          ),
        ),
        serverCpuStatusFuture.when(
          error: ErrWidget.new,
          loading: LoadingWidget.new,
          data: (_) {
            return _Graphs(
              models: serverCpuStatuses,
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
  });

  final List<ServerCpuStatusModel> models;

  @override
  Widget build(BuildContext context) {
    final frames = models.frames;
    final data = frames
        .map(
          (frame) => frame.coresUsageMean,
        )
        .toList();

    logger.d(
      'displayed cpu frame count: ${frames.length}',
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
