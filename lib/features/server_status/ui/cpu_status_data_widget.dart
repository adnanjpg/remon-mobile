import 'package:flutter/material.dart';
import 'package:remon_mobile/features/server_status/models/server_status_model.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CpuStatusDataWidget extends StatelessWidget {
  const CpuStatusDataWidget({
    required this.items,
    super.key,
  });

  final CpuUsageModel items;

  @override
  Widget build(BuildContext context) {
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
                    items.vendorId,
                  ].join(': '),
                ),
                Text(
                  [
                    getStr(LocaleKeys.cpu_status_graph_dets_brand),
                    items.brand,
                  ].join(': '),
                ),
              ].joinWidgetList(
                (_) => const SizedBox(
                  height: quartDefPaddingSize,
                ),
              ),
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
                ...items.usageItems.mapWIndex(
                  (index, e) {
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
                              e.cpuFreq.toString(),
                            ],
                          ),
                        ),
                        Text(
                          getStrArgs(
                            LocaleKeys
                                .cpu_status_graph_dets_cores_table_cpu_usage_item,
                            args: [
                              e.cpuUsagePercentage.toString(),
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
              height: defPaddingSize,
            ),
          ),
        ),
        _Graphs(
          model: items,
        ),
      ],
    );
  }
}

class _Graphs extends StatelessWidget {
  const _Graphs({
    required this.model,
  });

  final CpuUsageModel model;

  @override
  Widget build(BuildContext context) {
    return SfSparkLineChart(
      data: const [1, 30, 50, 80, 2],
      axisLineWidth: 1,
      axisLineDashArray: const [1, 1],
    );
  }
}
