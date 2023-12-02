enum OtpUrlPickFromOptions {
  externalApp,
  camera,
  inputUrl;

  bool get isExternalApp => this == OtpUrlPickFromOptions.externalApp;
  bool get isCamera => this == OtpUrlPickFromOptions.camera;
  bool get isInputUrl => this == OtpUrlPickFromOptions.inputUrl;

  // camera and inputUrl are managed by the app itself
  bool get isOptionUrlManaged => isCamera || isInputUrl;
}
