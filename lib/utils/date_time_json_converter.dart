import 'package:freezed_annotation/freezed_annotation.dart';

// our api accepts / returns dates in the following format:
// 2023-09-14T00:00:00.000Z
// Z comes from the UTC time zone
class DatetimeJsonConverter extends JsonConverter<DateTime, String> {
  const DatetimeJsonConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.convertToJson();
}

class DatetimeLocalJsonConverter extends JsonConverter<DateTime, String> {
  const DatetimeLocalJsonConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.convertToJsonLocal();
}

extension JsonConverterDateExtension on DateTime {
  String convertToJson() => this.toUtc().toIso8601String();
  String convertToJsonLocal() => this.toIso8601String();
}
