import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_device_desc_model.g.dart';
part 'suggested_device_desc_model.freezed.dart';

// name: string
// description: string
@freezed
class SuggestedDeviceDescModel with _$SuggestedDeviceDescModel {
  const factory SuggestedDeviceDescModel({
    required String name,
    required String description,
  }) = _SuggestedDeviceDescModel;
  const SuggestedDeviceDescModel._();

  factory SuggestedDeviceDescModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestedDeviceDescModelFromJson(json);
}
