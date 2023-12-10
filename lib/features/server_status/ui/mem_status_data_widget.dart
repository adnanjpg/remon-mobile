import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_mem_status_model.dart';
import 'package:remon_mobile/features/server_status/prov/server_status_prov.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MemStatusDataWidget extends ConsumerWidget {
  const MemStatusDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverMemStatus = ref.watch(serverMemStatusFutureProv);

    return Column(
      children: [
        ListTile(
          title: Text(
            getStr(LocaleKeys.mem_status_graph_title),
          ),
        ),
        serverMemStatus.when(
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

  final ServerMemStatusModel model;

  @override
  Widget build(BuildContext context) {
    return SfSparkLineChart(
      axisLineDashArray: const [5, 5],
      axisLineColor: Colors.grey,
      data: model.frames
          .map(
            (frame) => frame.usagePercent,
          )
          .toList(),
    );
  }
}
