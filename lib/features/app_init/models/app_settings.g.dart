// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      isOpenedBefore: json['isOpenedBefore'] as bool,
      userTrackingStatus:
          $enumDecode(_$UserTrackingStatusEnumMap, json['userTrackingStatus']),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'isOpenedBefore': instance.isOpenedBefore,
      'userTrackingStatus':
          _$UserTrackingStatusEnumMap[instance.userTrackingStatus]!,
    };

const _$UserTrackingStatusEnumMap = {
  UserTrackingStatus.notAsked: 'notAsked',
  UserTrackingStatus.approved: 'approved',
  UserTrackingStatus.refused: 'refused',
};
