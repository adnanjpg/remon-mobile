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

class CpuStatusDataWidget extends StatelessWidget {
  const CpuStatusDataWidget({
    required this.infoModels,
    super.key,
  });

  final List<CpuInfoModel> infoModels;

  @override
  Widget build(BuildContext context) {
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
        Consumer(
          builder: (context, ref, _) {
            final serverCpuStatusFuture = ref.watch(serverCpuStatusFutureProv);
            final serverCpuStatuses = ref.watch(serverCpuStatusesProv);

            final bod = _Graphs(
              models: serverCpuStatuses,
            );

            return serverCpuStatusFuture.when(
              error: ErrWidget.new,
              loading: () =>
                  serverCpuStatuses.isEmpty ? const LoadingWidget() : bod,
              data: (_) => bod,
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
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).statusChartBorderColor,
          width: 2,
        ),
      ),
      child: Sparkline(
        max: 100,
        min: 0,
        fillMode: FillMode.above,
        backgroundColor: Theme.of(context).statusChartBgColor,
        fillColor: Theme.of(context).statusChartFillColor,
        gridLineAmount: 11,
        enableGridLines: true,
        gridLineColor: Theme.of(context).statusChartGridLineColor,
        gridLineLabelColor: Theme.of(context).statusChartGridLineLabelColor,
        gridLineWidth: 1,
        gridLineLabelPrecision: 3,
        data: data,
      ),
    );
  }
}
