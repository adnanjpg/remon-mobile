import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../features/app_init/app_init_prov.dart';
import '../utils/utils.dart';

final fbAnalyticsProv = Provider(AnalyticsService.new);

final _setAnalyticsConsentProv = StateProvider.autoDispose<bool>(
  (_) => false,
);

class AnalyticsService {
  final Ref _ref;

  String sessionId;

  AnalyticsService(this._ref) : sessionId = const Uuid().v4();

  Future<String> _logEvent(
    String name, {
    Map<String, Object?>? parameters,
  }) async {
    final settings = _ref.watch(appSettingsProv);
    final isTrackingAllowed = settings?.userTrackingStatus.isApproved;

    if (isTrackingAllowed != true) {
      if (_ref.read(_setAnalyticsConsentProv) != true) {
        _ref.read(_setAnalyticsConsentProv.notifier).state = true;
      }

      return 'no tracking allowed';
    }

    try {
      logger.i(
        name +
            {
              if (parameters != null)
                ...(parameters.map(
                  (key, value) => MapEntry(
                    key,
                    value.toString(),
                  ),
                )),
              'session_id': sessionId,
              'date': DateTime.now().toIso8601String(),
            }.toString(),
      );

      return '';
    } catch (e) {
      logger.e(e);

      return e.toString();
    }
  }
}

extension CommonEvents on AnalyticsService {
  Future<void> appOpened() async => await _logEvent(
        'app_opened',
        parameters: {
          'date': DateTime.now().toIso8601String(),
        },
      );
}

extension ButtonEvents on AnalyticsService {
  Future<String> buttonPressed(
    String buttonName,
    String eventName, {
    Map<String, Object?>? parameters,
  }) async {
    final _l = await _logEvent(
      'button_pressed',
      parameters: {
        'button_name': buttonName,
        'event_name': eventName,
        ...(parameters ?? {}),
      },
    );

    return _l;
  }
}

extension QuizEvents on AnalyticsService {
  Future<void> navigateToEstimationQuiz(String? quizId) async =>
      await _logEvent(
        'navigate_to_estimation_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> completedEstimationQuiz(String quizId) async => await _logEvent(
        'completed_estimation_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> exitedEstimationQuiz(String quizId) async => await _logEvent(
        'exited_estimation_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );

  Future<void> navigateToMultiQuiz(String? quizId) async => await _logEvent(
        'navigate_to_multi_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> completedMultiQuiz(String quizId) async => await _logEvent(
        'completed_multi_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> exitedMultiQuiz(String quizId) async => await _logEvent(
        'exited_multi_quiz',
        parameters: {
          'quiz_id': quizId,
        },
      );

  Future<void> navigateToTimeAttack(String? quizId) async => await _logEvent(
        'navigate_to_time_attack',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> completedTimeAttack(String quizId) async => await _logEvent(
        'completed_time_attack',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> exitedTimeAttack(String quizId) async => await _logEvent(
        'exited_time_attack',
        parameters: {
          'quiz_id': quizId,
        },
      );

  Future<void> navigateToDiagnosticTest(String? quizId) async =>
      await _logEvent(
        'navigate_to_diagnostic_test',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> completedDiagnosticTest(String quizId) async => await _logEvent(
        'completed_diagnostic_test',
        parameters: {
          'quiz_id': quizId,
        },
      );
  Future<void> exitedDiagnosticTest(String quizId) async => await _logEvent(
        'exited_diagnostic_test',
        parameters: {
          'quiz_id': quizId,
        },
      );

  Future<void> tappedOnDisabledQuiz() async =>
      await _logEvent('home:already_entered_quiz_dialog:show');
}
