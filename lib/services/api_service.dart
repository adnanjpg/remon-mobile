import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:remon_mobile/app_runner.dart';
import 'package:remon_mobile/utils/utils.dart';

class ApiMethods {
  const ApiMethods(this._ref);
  final Ref _ref;

  Dio get _dio => _ref.read(_dioProv);

  String get baseUrl => appConfig.hostUrl;

  String pathToUrl(String path) => '$baseUrl/$path';

  // Future<String?> get idToken =>
  //     _ref.read(authProvider.notifier).getUserIdToken();
  // TODO(adnanjpg)
  Future<String?> get idToken async => 'thetoken';

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
  static const
      //
      hello = 'hello'
      //
      ;
}

final apiServiceProv = Provider(ApiService.new);

final _apiMethodsProv = Provider(ApiMethods.new);

final _dioProv = Provider((_) => Dio());

class ApiService {
  const ApiService(this._ref);
  final Ref _ref;

  ApiMethods get methods => _ref.read(_apiMethodsProv);
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
