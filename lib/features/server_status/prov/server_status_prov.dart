import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/features/server_status/models/server_cpu_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_disk_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_mem_status_model.dart';
import 'package:remon_mobile/services/api_service.dart';
import 'package:remon_mobile/utils/utils.dart';

final serverHardwareInfoFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerHardwareInfo();
  },
);

final displayedFreqCountProv = Provider((ref) => 50);

final serverCpuStatusFutureProv = FutureProvider.autoDispose(
  (ref) async {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    final val = await api.getServerCpuStatus(
      startAndEndTime: startAndEndTime,
    );

    if (val != null) {
      ref.read(serverCpuStatusesProv.notifier).update(
        (state) {
          final newState = [...state];

          if (newState.frames.length >= ref.read(displayedFreqCountProv)) {
            newState.removeAt(0);
          }

          return [
            ...newState,
            val,
          ];
        },
      );
    } else {
      logger.d('serverCpuStatusFutureProv: val is null');
    }
  },
);

final serverCpuStatusesProv =
    StateProvider.autoDispose<List<ServerCpuStatusModel>>(
  (ref) => [],
);

final serverMemStatusFutureProv = FutureProvider.autoDispose(
  (ref) async {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    final val = await api.getServerMemStatus(
      startAndEndTime: startAndEndTime,
    );

    if (val != null) {
      ref.read(serverMemStatusesProv.notifier).update(
        (state) {
          final newState = [...state];

          if (newState.frames.length >= ref.read(displayedFreqCountProv)) {
            newState.removeAt(0);
          }

          return [
            ...newState,
            val,
          ];
        },
      );
    } else {
      logger.d('serverCpuStatusFutureProv: val is null');
    }
  },
);

final serverMemStatusesProv =
    StateProvider.autoDispose<List<ServerMemStatusModel>>(
  (ref) => [],
);

final serverDiskStatusFutureProv = FutureProvider.autoDispose(
  (ref) async {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    final val = await api.getServerDiskStatus(
      startAndEndTime: startAndEndTime,
    );

    if (val != null) {
      ref.read(serverDiskStatusesProv.notifier).update(
        (state) {
          final newState = [...state];

          if (newState.frames.length >= ref.read(displayedFreqCountProv)) {
            newState.removeAt(0);
          }

          return [
            ...newState,
            val,
          ];
        },
      );
    } else {
      logger.d('serverCpuStatusFutureProv: val is null');
    }
  },
);

final serverDiskStatusesProv =
    StateProvider.autoDispose<List<ServerDiskStatusModel>>(
  (ref) => [],
);

class ServerStatusFetchingTimeRange {
  const ServerStatusFetchingTimeRange({
    required this.start,
    required this.end,
  });

  factory ServerStatusFetchingTimeRange.revalidate() {
    final now = DateTime.now().toUtc();

    return ServerStatusFetchingTimeRange(
      start: now.subtract(
        const Duration(
          seconds: 3,
        ),
      ),
      end: now,
    );
  }

  final DateTime start;
  final DateTime end;
}

class ServerStatusFetchingTimeRangeNotifier
    extends StateNotifier<ServerStatusFetchingTimeRange> {
  ServerStatusFetchingTimeRangeNotifier(
    this._ref,
  ) : super(
          ServerStatusFetchingTimeRange.revalidate(),
        );

  Timer? _timer;
  final Ref _ref;

  void startTimer() {
    final interval = _ref.watch(serverStatusFetchingFrequencyProv);

    _timer = Timer.periodic(
      interval,
      (timer) {
        final newVal = ServerStatusFetchingTimeRange.revalidate();

        state = newVal;
      },
    );
  }

  void stopTimer() {
    _timer?.cancel();
  }
}

// TODO(adnanjpg): will be updated frequently
final serverStatusFetchingTimeRangeProv = StateNotifierProvider<
    ServerStatusFetchingTimeRangeNotifier, ServerStatusFetchingTimeRange>(
  ServerStatusFetchingTimeRangeNotifier.new,
);

// TODO(adnanjpg): will be read from config
final serverStatusFetchingFrequencyProv = StateProvider(
  (ref) => const Duration(
    seconds: 3,
  ),
);
