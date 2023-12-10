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

    return api.getServerCpuStatus();
  },
);

final serverMemStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerMemStatus();
  },
);

final serverDiskStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerDiskStatus();
  },
);

// TODO(adnanjpg): will be updated frequently
final serverStatusFetchingStartAndEndProv = StateProvider(
  (ref) => (
    start: DateTime.now(),
    end: DateTime.now().add(
      const Duration(
        seconds: 10,
      ),
    ),
  ),
);

// TODO(adnanjpg): will be read from config
final serverStatusFetchingFrequencyProv = StateProvider(
  (ref) => const Duration(
    seconds: 1,
  ),
);
