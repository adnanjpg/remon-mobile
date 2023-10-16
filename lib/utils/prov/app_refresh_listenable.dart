import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_info_prov.dart';

final refreshListenableProvider = Provider(
  (ref) => Listenable.merge(
    [
      ValueNotifier(ref.watch(appInfoProv)),
    ],
  ),
);
