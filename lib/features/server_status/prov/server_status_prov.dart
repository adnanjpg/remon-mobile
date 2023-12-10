import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/services/api_service.dart';

final serverHardwareInfoFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerHardwareInfo();
  },
);

final serverStatusFutureProv = FutureProvider.autoDispose(
  (ref) {
    final api = ref.read(apiServiceProv);

    return api.getServerStatus();
  },
);
