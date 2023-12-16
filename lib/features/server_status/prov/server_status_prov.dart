import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/services/api_service.dart';

final serverHardwareInfoFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerHardwareInfo();
  },
);

final serverCpuStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    return api.getServerCpuStatus(
      startAndEndTime: startAndEndTime,
    );
  },
);

final serverMemStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    return api.getServerMemStatus(
      startAndEndTime: startAndEndTime,
    );
  },
);

final serverDiskStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    final startAndEndTime = ref.watch(serverStatusFetchingTimeRangeProv);

    return api.getServerDiskStatus(
      startAndEndTime: startAndEndTime,
    );
  },
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
