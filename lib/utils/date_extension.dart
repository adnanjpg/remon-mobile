import 'package:easy_localization/easy_localization.dart';

extension DateExtension on DateTime {
  DateTime get startOfDay => DateTime(year, month, day);
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59);

  // mm dd yyyy
  String get formattedDate => DateFormat('MM/dd/yyyy').format(this);

  bool isTheSameDay(DateTime other) =>
      DateTime(year, month, day).isAtSameMomentAs(
        DateTime(
          other.year,
          other.month,
          other.day,
        ),
      );

  static DateTime get mostForwardTZ {
    final now = DateTime.now();

    // the most forward time zone is line islands, which is
    // UTC+14:00
    final lineIslands = now.add(
      const Duration(hours: 14),
    );

    return lineIslands;
  }

  bool get isDayStartedOnMostForwardTZ {
    return mostForwardTZ.isAfter(this);
  }
}
