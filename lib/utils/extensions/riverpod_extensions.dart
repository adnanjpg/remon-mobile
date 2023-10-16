import 'package:flutter_riverpod/flutter_riverpod.dart';

extension StreamExtension<T> on StreamProvider<T> {
  // TODO(adnanjpg): stream will be deprecated on 3.0
  // find a way to migrate
  // ignore: deprecated_member_use
  AlwaysAliveRefreshable<Stream<T>> get getStream => stream;
}
