// ignore_for_file: unused_element, unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localStorageProv = Provider<LocalStorageService>(LocalStorageService.new);

class LocalStorageService {
  LocalStorageService(this.ref);
  final Ref ref;

  Future<SharedPreferences> getPrefs() async => SharedPreferences.getInstance();

  Future<bool> _setVal(String key, String val) async {
    final prefs = await getPrefs();

    final set = await prefs.setString(
      key,
      val,
    );

    return set;
  }

  Future<T> _getVal<T>(String key) async {
    final prefs = await getPrefs();

    final val = prefs.get(key);

    return val as T;
  }

  Future<bool> _removeVAl(String key) async {
    final prefs = await getPrefs();

    final removed = await prefs.remove(key);

    return removed;
  }
}

class _LocalStorageKeys {
  static const _key = 'value';
}
