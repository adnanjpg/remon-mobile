extension OtpExtension on String {
  bool get isValidTotpUrl {
    return startsWith('otpauth://totp') &&
        contains('?secret=') &&
        contains('&issuer=');
  }
}
