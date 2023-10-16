import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final toastMachineProv = Provider(ToastMachine.new);

enum PrimaryToastType {
  success,
  error,
  warning,
  info,
}

class PrimaryToastProps {
  final PrimaryToastType type;
  final String title;
  final String? message;
  final VoidCallback? onDismiss;

  const PrimaryToastProps.success({
    required this.title,
    required this.message,
    this.onDismiss,
  }) : type = PrimaryToastType.success;

  const PrimaryToastProps.error({
    required this.title,
    required this.message,
    this.onDismiss,
  }) : type = PrimaryToastType.error;

  const PrimaryToastProps.warning({
    required this.title,
    required this.message,
    this.onDismiss,
  }) : type = PrimaryToastType.warning;

  const PrimaryToastProps.info({
    required this.title,
    required this.message,
    this.onDismiss,
  }) : type = PrimaryToastType.info;
}

class ToastMachine {
  // ignore: unused_field
  final Ref _ref;

  const ToastMachine(this._ref);

  void _showToast({
    required BuildContext context,
    required PrimaryToastProps props,
    Duration? duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          props.title,
        ),
      ),
    );
  }

  void showSuccessToast({
    required BuildContext context,
    required String title,
    required String? message,
    Duration? duration = const Duration(seconds: 2),
  }) {
    final tst = PrimaryToastProps.success(
      title: title,
      message: message,
    );

    _showToast(
      context: context,
      props: tst,
      duration: duration,
    );
  }

  void showErrorToast({
    required BuildContext context,
    required String title,
    required String? message,
    Duration? duration = const Duration(seconds: 2),
  }) {
    final tst = PrimaryToastProps.error(
      title: title,
      message: message,
    );

    _showToast(
      context: context,
      props: tst,
      duration: duration,
    );
  }

  void showWarningToast({
    required BuildContext context,
    required String title,
    required String? message,
    Duration? duration = const Duration(seconds: 2),
  }) {
    final tst = PrimaryToastProps.warning(
      title: title,
      message: message,
    );

    _showToast(
      context: context,
      props: tst,
      duration: duration,
    );
  }

  void showInfoToast({
    required BuildContext context,
    required String title,
    required String? message,
    Duration? duration = const Duration(seconds: 2),
  }) {
    final tst = PrimaryToastProps.info(
      title: title,
      message: message,
    );

    _showToast(
      context: context,
      props: tst,
      duration: duration,
    );
  }
}
