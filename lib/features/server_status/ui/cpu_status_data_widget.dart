import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_cpu_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_hardware_info_model.dart';
import 'package:remon_mobile/features/server_status/models/server_status_model.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CpuStatusDataWidget extends ConsumerWidget {
  const CpuStatusDataWidget({
    required this.model,
    super.key,
  });

  final CpuInfoModel model;

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
          children: [
            Column(
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
            ),
            serverCpuStatus.when(
              error: ErrWidget.new,
              loading: LoadingWidget.new,
              data: (data) {
                if (data == null) {
                  return const SizedBox();
                }
                final startAndEndTime =
                    ref.watch(serverStatusFetchingStartAndEndProv);
                final startTime = startAndEndTime.start;
                final endTime = startAndEndTime.end;
                final frequency = ref.watch(serverStatusFetchingFrequencyProv);

                return Column(
                  children: data.frames.mapWIndex(
                    (index, frame) {
                      return _SingleFrameDetail(
                        index: index,
                        frame: frame,
                        startTime: startTime,
                        endTime: endTime,
                        frequency: frequency,
                      );
                    },
                  ).joinWidgetList(
                    (index) => const SizedBox(
                      height: defPaddingSize,
                    ),
                  ),
                );
              },
            ),
          ].joinWidgetList(
            (_) => const SizedBox(
              height: defPaddingSize,
            ),
          ),
        ),
        // _Graphs(
        //   model: items,
        // ),
      ],
    );
  }
}

class _SingleFrameDetail extends StatelessWidget {
  const _SingleFrameDetail({
    super.key,
    required this.index,
    required this.frame,
    required this.startTime,
    required this.endTime,
    required this.frequency,
  });

  final int index;
  final CpuUsageFrameModel frame;
  final DateTime startTime;
  final DateTime endTime;
  final Duration frequency;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            frame.frameTime(index, startTime, endTime, frequency).toString(),
          ),
          Table(
            border: TableBorder.all(
              width: .1,
            ),
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Theme.of(context).cpuUsageTableTitleRowBg,
                ),
                children: [
                  Text(
                    getStr(
                      LocaleKeys
                          .cpu_status_graph_dets_cores_table_index_col_title,
                    ),
                  ),
                  Text(
                    getStr(
                      LocaleKeys
                          .cpu_status_graph_dets_cores_table_cpu_freq_title,
                    ),
                  ),
                  Text(
                    getStr(
                      LocaleKeys
                          .cpu_status_graph_dets_cores_table_cpu_usage_title,
                    ),
                  ),
                ]
                    .map(
                      (e) => Row(
                        children: [
                          const SizedBox(
                            width: quartDefPaddingSize,
                          ),
                          e,
                        ],
                      ),
                    )
                    .toList(),
              ),
              ...frame.coresUsage.mapWIndex(
                (index, core) {
                  return TableRow(
                    children: [
                      Text(
                        (index + 1).toString(),
                      ),
                      Text(
                        getStrArgs(
                          LocaleKeys
                              .cpu_status_graph_dets_cores_table_cpu_freq_item,
                          args: [
                            core.freq.toString(),
                          ],
                        ),
                      ),
                      Text(
                        getStrArgs(
                          LocaleKeys
                              .cpu_status_graph_dets_cores_table_cpu_usage_item,
                          args: [
                            core.usagePercentage.toString(),
                          ],
                        ),
                      ),
                    ]
                        .map(
                          (e) => Row(
                            children: [
                              const SizedBox(
                                width: quartDefPaddingSize,
                              ),
                              e,
                            ],
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ].joinWidgetList(
          (_) => const SizedBox(
            height: quartDefPaddingSize,
          ),
        ));
  }
}

// class _Graphs extends StatelessWidget {
//   const _Graphs({
//     required this.model,
//   });

//   final CpuUsageModel model;

//   @override
//   Widget build(BuildContext context) {
//     return SfSparkLineChart(
//       data: [model.frequencyMean, 1, 3, 6],
//     );
//   }
// }
