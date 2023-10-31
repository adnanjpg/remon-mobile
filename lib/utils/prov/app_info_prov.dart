import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class _AppInfo {
  const _AppInfo({
    required this.ref,
    required this.scaffoldMessengerKey,
  });
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  final Ref ref;
}

final appInfoProv = StateProvider(
  (ref) {
    return _AppInfo(
      ref: ref,
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
    );
  },
);
