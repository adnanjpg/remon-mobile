// ignore_for_file: unused_element, unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:remon_mobile/features/app_init/app_init_prov.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/two_fa/models/account_model.dart';
import 'package:remon_mobile/utils/utils.dart';

part 'device_operations.dart';
part 'account_operations.dart';

final localDbService = Provider<LocalDbService>(LocalDbService.new);

final _localDbProv = Provider<Isar>(
  (ref) {
    final isar = Isar.get(
      schemas: ref.watch(isarSchemasProv),
      name: ref.watch(isarDefaultInstanceNameProv),
    );

    return isar;
  },
);

class LocalDbService {
  LocalDbService(this.ref);
  final Ref ref;

  Isar get db => ref.watch(_localDbProv);
}
