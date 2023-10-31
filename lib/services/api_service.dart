import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/utils/prov/selected_device_prov.dart';
import 'package:remon_mobile/utils/utils.dart';

class ApiMethods {
  const ApiMethods(
    this._ref, {
    String? baseUrl,
  }) : _baseUrl = baseUrl;

  final String? _baseUrl;
  final Ref _ref;

  Dio get _dio => _ref.read(_dioProv);

  String get baseUrl => _baseUrl ?? _ref.watch(selectedDeviceProv).url;

  String pathToUrl(String path) => '$baseUrl/$path';

  Future<String?> get idToken =>
      Future.value(_ref.read(selectedDeviceProv).token);

  Future<String?> get idTokenHeader async => 'Bearer ${await idToken}';

  Future<Response<T>> post<T>({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.post<T>(
        url,
        data: data,
        options: Options(
          headers: headers,
        ),
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<Response<T>> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

// partial update, only sent fields
  Future<Response<T>> patch<T>({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.patch<T>(
        url,
        data: data,
        options: Options(
          headers: headers,
        ),
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  // rip everything and replace
  Future<Response<T>> put<T>({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.put<T>(
        url,
        data: data,
        options: Options(
          headers: headers,
        ),
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<Response<T>> putFileToUrl<T>({
    required String url,
    required File file,
  }) async {
    try {
      final mimeType = lookupMimeType(file.path);
      final fileBytes = await file.readAsBytes();

      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(
          fileBytes,
          filename: file.path.split('/').last,
          // TOOD(adnanjpg): if this doesnt work, replace with 'application/octet-stream'
          contentType: MediaType.parse(mimeType!),
        ),
      });

      final res = await _dio.put<T>(
        url,
        data: formData,
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<Response<T>> delete<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.delete<T>(
        url,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}

class ApiRoutes {
  static const hello = 'hello';
  static const getOtpQr = 'get-otp-qr';
  static const login = 'login';
  static const updateDeviceInfo = 'update-info';
}

final apiServiceProvExternalUrl = Provider.family<ApiService, String?>(
  (ref, baseUrl) => ApiService(
    ref,
    baseUrl: baseUrl,
  ),
);

final apiServiceProv = Provider(
  (ref) => ref.watch(
    apiServiceProvExternalUrl(null),
  ),
);

final _apiMethodsProv = Provider.family<ApiMethods, String?>(
  (ref, baseUrl) => ApiMethods(
    ref,
    baseUrl: baseUrl,
  ),
);

final _dioProv = Provider((_) => Dio());

class ApiService {
  const ApiService(
    this._ref, {
    this.baseUrl,
  });
  final String? baseUrl;
  final Ref _ref;

  ApiMethods get methods => _ref.watch(_apiMethodsProv(baseUrl));
}

extension HelloEndpoints on ApiService {
  Future<String?> hello() async {
    try {
      final res = await methods.get<String>(
        path: ApiRoutes.hello,
      );

      return res.data;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }
}

extension AuthEndPoints on ApiService {
  Future<bool> getOtpQr({
    required String deviceId,
  }) async {
    try {
      final res = await methods.post<String>(
        path: ApiRoutes.getOtpQr,
        data: {
          'device_id': deviceId,
        },
      );

      final dt = res.data;

      if (dt == null) {
        return false;
      }

      final decoded = json.decode(dt) as Map<String, dynamic>;
      final success = decoded['success'] as bool;

      return success;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  Future<String?> login({
    required String deviceId,
    required String otp,
  }) async {
    try {
      final res = await methods.post<String>(
        path: ApiRoutes.login,
        data: {
          'device_id': deviceId,
          'otp': otp,
        },
      );

      final dt = res.data;

      if (dt == null) {
        return null;
      }

      final decoded = json.decode(dt) as Map<String, dynamic>;
      final token = decoded['token'] as String;

      return token;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  Future<bool> updateDeviceInfo({
    required UpdateDeviceInfoRequestModel model,
  }) async {
    try {
      final res = await methods.post<String>(
        path: ApiRoutes.updateDeviceInfo,
        data: model.toJson(),
      );

      final dt = res.data;

      if (dt == null) {
        return false;
      }

      final decoded = json.decode(dt) as Map<String, dynamic>;
      final success = decoded['success'] as bool;

      return success;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }
}
