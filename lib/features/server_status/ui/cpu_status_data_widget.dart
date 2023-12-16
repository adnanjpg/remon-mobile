import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_cpu_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_hardware_info_model.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CpuStatusDataWidget extends ConsumerWidget {
  const CpuStatusDataWidget({
    required this.infoModels,
    super.key,
  });

  final List<CpuInfoModel> infoModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverCpuStatus = ref.watch(serverCpuStatusFutureProv);

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
        serverCpuStatus.when(
          error: ErrWidget.new,
          loading: LoadingWidget.new,
          data: (data) {
            if (data == null) {
              return const SizedBox();
            }

            return _Graphs(
              model: data,
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
  });

  final ServerCpuStatusModel model;

  @override
  Widget build(BuildContext context) {
    final data = model.frames
        .map(
          (frame) => frame.coresUsageMean,
        )
        .toList();

    return SfSparkLineChart(
      axisLineDashArray: const [5, 5],
      axisLineColor: Colors.grey,
      data: data,
    );
  }
}
