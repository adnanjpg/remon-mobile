extension AuthString on String {
  bool get isEmailValid => RegExp(
        r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      ).hasMatch(this);

  bool get isPasswordValid => length >= 6;

  // - a-z, A-Z, 0-9
  // - cannot start with a number
  // - min 3 chars
  // - max 20 chars
  bool get isUsernameValid {
    final regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9]{2,19}$');

    return regex.hasMatch(this);
  }

  bool get isPhoneNumberValid {
    final regex = RegExp(r'^[0-9]{6,20}$');

    return regex.hasMatch(this);
  }

  // never assume anything about the user's name,
  bool get isFullNameValid => length >= 3;
}
