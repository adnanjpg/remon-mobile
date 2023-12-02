enum OtpUrlPickFromOptions {
  externalApp,
  camera,
  inputUrl;

  bool get isExternalApp => this == OtpUrlPickFromOptions.externalApp;
  bool get isCamera => this == OtpUrlPickFromOptions.camera;
  bool get isInputUrl => this == OtpUrlPickFromOptions.inputUrl;
}
