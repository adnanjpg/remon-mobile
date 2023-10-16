import 'dart:io';

import 'package:remon_mobile/app_runner.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

import '../utils/utils.dart';

class ApiMethods {
  final Ref _ref;
  const ApiMethods(this._ref);

  Dio get _dio => _ref.read(_dioProv);

  String get baseUrl => appConfig.hostUrl;

  String pathToUrl(String path) => '$baseUrl/api/$path';

  // Future<String?> get idToken =>
  //     _ref.read(authProvider.notifier).getUserIdToken();
  // TODO(adnanjpg)
  Future<String?> get idToken async => 'thetoken';

  Future<String?> get idTokenHeader async => 'Bearer ${await idToken}';

  Future<Response<dynamic>> post({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.post(
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

  Future<Response<dynamic>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.get(
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
  Future<Response<dynamic>> patch({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.patch(
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
  Future<Response<dynamic>> put({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.put(
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

  Future<Response<dynamic>> putFileToUrl({
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
          // TOOD: if this doesnt work, replace with 'application/octet-stream'
          contentType: MediaType.parse(mimeType!),
        ),
      });

      final res = await _dio.put(
        url,
        data: formData,
      );

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<Response<dynamic>> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': await idTokenHeader,
      };

      final url = pathToUrl(path);
      final res = await _dio.delete(
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
      userRoute = 'users',
      deviceInfo = 'deviceinfo'
      //
      ;

  static const
      //
      estQuiz = 'estimationquiz',
      multiQuiz = 'multiquiz',
      quiz = 'quiz'
      //
      ;

  static const
      //
      skillEval = 'skilleval',
      timeAttack = 'time-attack',
      diagnosticTest = 'diagnostic-test'
      //
      ;

  static const
      //
      leaderBoard = 'leaderboard'
      //
      ;

  static const admin = 'admin';
  static const
      //
      adminEstQuiz = '$admin/estimationquiz',
      adminMultiQuiz = '$admin/multiquiz',
      adminTimeAttack = '$admin/time-attack-question',
      adminDiagnosticTest = '$admin/diagnostic-test-question'
//
      ;
}

final apiServiceProv = Provider(ApiService.new);

final _apiMethodsProv = Provider(ApiMethods.new);

final _dioProv = Provider((_) => Dio());

class ApiService {
  final Ref _ref;

  const ApiService(this._ref);

  ApiMethods get methods => _ref.read(_apiMethodsProv);
}
