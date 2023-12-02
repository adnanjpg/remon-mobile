import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:otp/otp.dart';
import 'package:remon_mobile/utils/utils.dart';

part 'account_model.g.dart';
part 'account_model.freezed.dart';

extension on String {
  Algorithm toAlgorithmEnum() {
    switch (this) {
      case 'SHA1':
        return Algorithm.SHA1;
      case 'SHA256':
        return Algorithm.SHA256;
      case 'SHA512':
        return Algorithm.SHA512;
      default:
        throw Exception('Unknown algorithm: $this');
    }
  }
}

const collectionOnFreezed = Collection(ignore: {'copyWith'});

@freezed
@collectionOnFreezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    required int id,
    required String appname,
    required String username,
    required String secret,
    required String issuer,
    required String algorithm,
    required int digits,
    required int period,
  }) = _AccountModel;
  const AccountModel._();

  // otpauth://totp/YourAppName:username?secret=sharedsecret&issuer=YourAppName&algorithm=SHA1&digits=6&period=30
  static AccountModel? fromUrl(String url) {
    try {
      final uri = Uri.parse(url);
      final queryParameters = uri.queryParameters;

      final pathSeg = uri.pathSegments[0].split(':');
      final appname = pathSeg[0];
      final username = pathSeg[1];

      final secret = queryParameters['secret']!;
      final issuer = queryParameters['issuer']!;
      final algorithm = queryParameters['algorithm']!;
      final digits = int.tryParse(queryParameters['digits'] ?? '');
      final period = int.tryParse(queryParameters['period'] ?? '');

      return AccountModel(
        id: invalidTempId,
        appname: appname,
        username: username,
        secret: secret,
        issuer: issuer,
        algorithm: algorithm,
        digits: digits ?? _defaultDigits,
        period: period ?? _defaultPeriod,
      );
    } catch (e) {
      return null;
    }
  }

  static const int _defaultDigits = 6;
  static const int _defaultPeriod = 30;

  int get totp {
    final now = DateTime.now().toUtc();
    final ms = now.millisecondsSinceEpoch;

    logger.i('now: $now');

    final totp = OTP.generateTOTPCode(
      secret,
      ms,
      length: digits,
      interval: period,
      algorithm: algorithm.toAlgorithmEnum(),
      isGoogle: true,
    );

    return totp;
  }

  String get totpString {
    return totp.toString().padLeft(digits, '0');
  }

  String get totpFormatted {
    final str = totp.toString().padLeft(digits, '0');
    return [
      str.substring(0, 3),
      str.substring(3),
    ].join(' ');
  }

  static int get invalidTempId => -1;
}
