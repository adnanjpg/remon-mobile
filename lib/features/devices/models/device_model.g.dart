// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetDeviceModelCollection on Isar {
  IsarCollection<int, DeviceModel> get deviceModels => this.collection();
}

const DeviceModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'DeviceModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'ipWPort',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isHttps',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'url',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'deviceUUID',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'ip',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'port',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'token',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'ramAlertRange',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'cpuAlertRange',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'storageAlertRange',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'addedOn',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'lastUsedOn',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'tokenUpdatedOn',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, DeviceModel>(
    serialize: serializeDeviceModel,
    deserialize: deserializeDeviceModel,
    deserializeProperty: deserializeDeviceModelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeDeviceModel(IsarWriter writer, DeviceModel object) {
  IsarCore.writeString(writer, 1, object.ipWPort);
  IsarCore.writeBool(writer, 2, object.isHttps);
  IsarCore.writeString(writer, 3, object.url);
  IsarCore.writeString(writer, 4, object.deviceUUID);
  IsarCore.writeString(writer, 5, object.title);
  IsarCore.writeString(writer, 6, object.description);
  IsarCore.writeString(writer, 7, object.ip);
  IsarCore.writeLong(writer, 8, object.port);
  IsarCore.writeString(writer, 9, object.token);
  IsarCore.writeDouble(writer, 10, object.ramAlertRange);
  IsarCore.writeDouble(writer, 11, object.cpuAlertRange);
  IsarCore.writeDouble(writer, 12, object.storageAlertRange);
  IsarCore.writeLong(writer, 13,
      object.addedOn?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(
      writer,
      14,
      object.lastUsedOn?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  IsarCore.writeLong(
      writer,
      15,
      object.tokenUpdatedOn?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  return object.id;
}

@isarProtected
DeviceModel deserializeDeviceModel(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _deviceUUID;
  _deviceUUID = IsarCore.readString(reader, 4) ?? '';
  final String _title;
  _title = IsarCore.readString(reader, 5) ?? '';
  final String _description;
  _description = IsarCore.readString(reader, 6) ?? '';
  final String _ip;
  _ip = IsarCore.readString(reader, 7) ?? '';
  final int _port;
  _port = IsarCore.readLong(reader, 8);
  final String _token;
  _token = IsarCore.readString(reader, 9) ?? '';
  final double _ramAlertRange;
  _ramAlertRange = IsarCore.readDouble(reader, 10);
  final double _cpuAlertRange;
  _cpuAlertRange = IsarCore.readDouble(reader, 11);
  final double _storageAlertRange;
  _storageAlertRange = IsarCore.readDouble(reader, 12);
  final DateTime? _addedOn;
  {
    final value = IsarCore.readLong(reader, 13);
    if (value == -9223372036854775808) {
      _addedOn = null;
    } else {
      _addedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _lastUsedOn;
  {
    final value = IsarCore.readLong(reader, 14);
    if (value == -9223372036854775808) {
      _lastUsedOn = null;
    } else {
      _lastUsedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _tokenUpdatedOn;
  {
    final value = IsarCore.readLong(reader, 15);
    if (value == -9223372036854775808) {
      _tokenUpdatedOn = null;
    } else {
      _tokenUpdatedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = DeviceModel(
    id: _id,
    deviceUUID: _deviceUUID,
    title: _title,
    description: _description,
    ip: _ip,
    port: _port,
    token: _token,
    ramAlertRange: _ramAlertRange,
    cpuAlertRange: _cpuAlertRange,
    storageAlertRange: _storageAlertRange,
    addedOn: _addedOn,
    lastUsedOn: _lastUsedOn,
    tokenUpdatedOn: _tokenUpdatedOn,
  );
  return object;
}

@isarProtected
dynamic deserializeDeviceModelProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readBool(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 0:
      return IsarCore.readId(reader);
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    case 7:
      return IsarCore.readString(reader, 7) ?? '';
    case 8:
      return IsarCore.readLong(reader, 8);
    case 9:
      return IsarCore.readString(reader, 9) ?? '';
    case 10:
      return IsarCore.readDouble(reader, 10);
    case 11:
      return IsarCore.readDouble(reader, 11);
    case 12:
      return IsarCore.readDouble(reader, 12);
    case 13:
      {
        final value = IsarCore.readLong(reader, 13);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 14:
      {
        final value = IsarCore.readLong(reader, 14);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 15:
      {
        final value = IsarCore.readLong(reader, 15);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _DeviceModelUpdate {
  bool call({
    required int id,
    String? ipWPort,
    bool? isHttps,
    String? url,
    String? deviceUUID,
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
    double? ramAlertRange,
    double? cpuAlertRange,
    double? storageAlertRange,
    DateTime? addedOn,
    DateTime? lastUsedOn,
    DateTime? tokenUpdatedOn,
  });
}

class _DeviceModelUpdateImpl implements _DeviceModelUpdate {
  const _DeviceModelUpdateImpl(this.collection);

  final IsarCollection<int, DeviceModel> collection;

  @override
  bool call({
    required int id,
    Object? ipWPort = ignore,
    Object? isHttps = ignore,
    Object? url = ignore,
    Object? deviceUUID = ignore,
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? ramAlertRange = ignore,
    Object? cpuAlertRange = ignore,
    Object? storageAlertRange = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (ipWPort != ignore) 1: ipWPort as String?,
          if (isHttps != ignore) 2: isHttps as bool?,
          if (url != ignore) 3: url as String?,
          if (deviceUUID != ignore) 4: deviceUUID as String?,
          if (title != ignore) 5: title as String?,
          if (description != ignore) 6: description as String?,
          if (ip != ignore) 7: ip as String?,
          if (port != ignore) 8: port as int?,
          if (token != ignore) 9: token as String?,
          if (ramAlertRange != ignore) 10: ramAlertRange as double?,
          if (cpuAlertRange != ignore) 11: cpuAlertRange as double?,
          if (storageAlertRange != ignore) 12: storageAlertRange as double?,
          if (addedOn != ignore) 13: addedOn as DateTime?,
          if (lastUsedOn != ignore) 14: lastUsedOn as DateTime?,
          if (tokenUpdatedOn != ignore) 15: tokenUpdatedOn as DateTime?,
        }) >
        0;
  }
}

sealed class _DeviceModelUpdateAll {
  int call({
    required List<int> id,
    String? ipWPort,
    bool? isHttps,
    String? url,
    String? deviceUUID,
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
    double? ramAlertRange,
    double? cpuAlertRange,
    double? storageAlertRange,
    DateTime? addedOn,
    DateTime? lastUsedOn,
    DateTime? tokenUpdatedOn,
  });
}

class _DeviceModelUpdateAllImpl implements _DeviceModelUpdateAll {
  const _DeviceModelUpdateAllImpl(this.collection);

  final IsarCollection<int, DeviceModel> collection;

  @override
  int call({
    required List<int> id,
    Object? ipWPort = ignore,
    Object? isHttps = ignore,
    Object? url = ignore,
    Object? deviceUUID = ignore,
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? ramAlertRange = ignore,
    Object? cpuAlertRange = ignore,
    Object? storageAlertRange = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return collection.updateProperties(id, {
      if (ipWPort != ignore) 1: ipWPort as String?,
      if (isHttps != ignore) 2: isHttps as bool?,
      if (url != ignore) 3: url as String?,
      if (deviceUUID != ignore) 4: deviceUUID as String?,
      if (title != ignore) 5: title as String?,
      if (description != ignore) 6: description as String?,
      if (ip != ignore) 7: ip as String?,
      if (port != ignore) 8: port as int?,
      if (token != ignore) 9: token as String?,
      if (ramAlertRange != ignore) 10: ramAlertRange as double?,
      if (cpuAlertRange != ignore) 11: cpuAlertRange as double?,
      if (storageAlertRange != ignore) 12: storageAlertRange as double?,
      if (addedOn != ignore) 13: addedOn as DateTime?,
      if (lastUsedOn != ignore) 14: lastUsedOn as DateTime?,
      if (tokenUpdatedOn != ignore) 15: tokenUpdatedOn as DateTime?,
    });
  }
}

extension DeviceModelUpdate on IsarCollection<int, DeviceModel> {
  _DeviceModelUpdate get update => _DeviceModelUpdateImpl(this);

  _DeviceModelUpdateAll get updateAll => _DeviceModelUpdateAllImpl(this);
}

sealed class _DeviceModelQueryUpdate {
  int call({
    String? ipWPort,
    bool? isHttps,
    String? url,
    String? deviceUUID,
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
    double? ramAlertRange,
    double? cpuAlertRange,
    double? storageAlertRange,
    DateTime? addedOn,
    DateTime? lastUsedOn,
    DateTime? tokenUpdatedOn,
  });
}

class _DeviceModelQueryUpdateImpl implements _DeviceModelQueryUpdate {
  const _DeviceModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<DeviceModel> query;
  final int? limit;

  @override
  int call({
    Object? ipWPort = ignore,
    Object? isHttps = ignore,
    Object? url = ignore,
    Object? deviceUUID = ignore,
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? ramAlertRange = ignore,
    Object? cpuAlertRange = ignore,
    Object? storageAlertRange = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (ipWPort != ignore) 1: ipWPort as String?,
      if (isHttps != ignore) 2: isHttps as bool?,
      if (url != ignore) 3: url as String?,
      if (deviceUUID != ignore) 4: deviceUUID as String?,
      if (title != ignore) 5: title as String?,
      if (description != ignore) 6: description as String?,
      if (ip != ignore) 7: ip as String?,
      if (port != ignore) 8: port as int?,
      if (token != ignore) 9: token as String?,
      if (ramAlertRange != ignore) 10: ramAlertRange as double?,
      if (cpuAlertRange != ignore) 11: cpuAlertRange as double?,
      if (storageAlertRange != ignore) 12: storageAlertRange as double?,
      if (addedOn != ignore) 13: addedOn as DateTime?,
      if (lastUsedOn != ignore) 14: lastUsedOn as DateTime?,
      if (tokenUpdatedOn != ignore) 15: tokenUpdatedOn as DateTime?,
    });
  }
}

extension DeviceModelQueryUpdate on IsarQuery<DeviceModel> {
  _DeviceModelQueryUpdate get updateFirst =>
      _DeviceModelQueryUpdateImpl(this, limit: 1);

  _DeviceModelQueryUpdate get updateAll => _DeviceModelQueryUpdateImpl(this);
}

class _DeviceModelQueryBuilderUpdateImpl implements _DeviceModelQueryUpdate {
  const _DeviceModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<DeviceModel, DeviceModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? ipWPort = ignore,
    Object? isHttps = ignore,
    Object? url = ignore,
    Object? deviceUUID = ignore,
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? ramAlertRange = ignore,
    Object? cpuAlertRange = ignore,
    Object? storageAlertRange = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (ipWPort != ignore) 1: ipWPort as String?,
        if (isHttps != ignore) 2: isHttps as bool?,
        if (url != ignore) 3: url as String?,
        if (deviceUUID != ignore) 4: deviceUUID as String?,
        if (title != ignore) 5: title as String?,
        if (description != ignore) 6: description as String?,
        if (ip != ignore) 7: ip as String?,
        if (port != ignore) 8: port as int?,
        if (token != ignore) 9: token as String?,
        if (ramAlertRange != ignore) 10: ramAlertRange as double?,
        if (cpuAlertRange != ignore) 11: cpuAlertRange as double?,
        if (storageAlertRange != ignore) 12: storageAlertRange as double?,
        if (addedOn != ignore) 13: addedOn as DateTime?,
        if (lastUsedOn != ignore) 14: lastUsedOn as DateTime?,
        if (tokenUpdatedOn != ignore) 15: tokenUpdatedOn as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension DeviceModelQueryBuilderUpdate
    on QueryBuilder<DeviceModel, DeviceModel, QOperations> {
  _DeviceModelQueryUpdate get updateFirst =>
      _DeviceModelQueryBuilderUpdateImpl(this, limit: 1);

  _DeviceModelQueryUpdate get updateAll =>
      _DeviceModelQueryBuilderUpdateImpl(this);
}

extension DeviceModelQueryFilter
    on QueryBuilder<DeviceModel, DeviceModel, QFilterCondition> {
  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipWPortMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipWPortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> isHttpsEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      urlGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      urlLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      deviceUUIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ipLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> portEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> portGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      portGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> portLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      portLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> portBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      ramAlertRangeBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      cpuAlertRangeBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      storageAlertRangeBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> addedOnEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> addedOnLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> addedOnBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension DeviceModelQueryObject
    on QueryBuilder<DeviceModel, DeviceModel, QFilterCondition> {}

extension DeviceModelQuerySortBy
    on QueryBuilder<DeviceModel, DeviceModel, QSortBy> {
  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIpWPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIpWPortDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIsHttps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIsHttpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDeviceUUID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDeviceUUIDDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIpDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTokenDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByRamAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByRamAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByCpuAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByCpuAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByStorageAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByStorageAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByAddedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByLastUsedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByTokenUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }
}

extension DeviceModelQuerySortThenBy
    on QueryBuilder<DeviceModel, DeviceModel, QSortThenBy> {
  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIpWPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIpWPortDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIsHttps() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIsHttpsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDeviceUUID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDeviceUUIDDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIpDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTokenDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByRamAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByRamAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByCpuAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByCpuAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByStorageAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByStorageAlertRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByAddedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByLastUsedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByTokenUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }
}

extension DeviceModelQueryWhereDistinct
    on QueryBuilder<DeviceModel, DeviceModel, QDistinct> {
  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByIpWPort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByIsHttps() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByDeviceUUID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByRamAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByCpuAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByStorageAlertRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15);
    });
  }
}

extension DeviceModelQueryProperty1
    on QueryBuilder<DeviceModel, DeviceModel, QProperty> {
  QueryBuilder<DeviceModel, String, QAfterProperty> ipWPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DeviceModel, bool, QAfterProperty> isHttpsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> deviceUUIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, int, QAfterProperty> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<DeviceModel, double, QAfterProperty> ramAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<DeviceModel, double, QAfterProperty> cpuAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<DeviceModel, double, QAfterProperty>
      storageAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty> addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty> lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }
}

extension DeviceModelQueryProperty2<R>
    on QueryBuilder<DeviceModel, R, QAfterProperty> {
  QueryBuilder<DeviceModel, (R, String), QAfterProperty> ipWPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DeviceModel, (R, bool), QAfterProperty> isHttpsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> deviceUUIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, (R, int), QAfterProperty> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<DeviceModel, (R, double), QAfterProperty>
      ramAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<DeviceModel, (R, double), QAfterProperty>
      cpuAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<DeviceModel, (R, double), QAfterProperty>
      storageAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty> addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty>
      lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }
}

extension DeviceModelQueryProperty3<R1, R2>
    on QueryBuilder<DeviceModel, (R1, R2), QAfterProperty> {
  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> ipWPortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, bool), QOperations> isHttpsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations>
      deviceUUIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, int), QOperations> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, double), QOperations>
      ramAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, double), QOperations>
      cpuAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, double), QOperations>
      storageAlertRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }
}
