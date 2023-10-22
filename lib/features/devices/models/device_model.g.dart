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
  IsarCore.writeString(writer, 2, object.title);
  IsarCore.writeString(writer, 3, object.description);
  IsarCore.writeString(writer, 4, object.ip);
  IsarCore.writeLong(writer, 5, object.port);
  IsarCore.writeString(writer, 6, object.token);
  IsarCore.writeLong(writer, 7,
      object.addedOn?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(
      writer,
      8,
      object.lastUsedOn?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  IsarCore.writeLong(
      writer,
      9,
      object.tokenUpdatedOn?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  return object.id;
}

@isarProtected
DeviceModel deserializeDeviceModel(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _title;
  _title = IsarCore.readString(reader, 2) ?? '';
  final String _description;
  _description = IsarCore.readString(reader, 3) ?? '';
  final String _ip;
  _ip = IsarCore.readString(reader, 4) ?? '';
  final int _port;
  _port = IsarCore.readLong(reader, 5);
  final String _token;
  _token = IsarCore.readString(reader, 6) ?? '';
  final DateTime? _addedOn;
  {
    final value = IsarCore.readLong(reader, 7);
    if (value == -9223372036854775808) {
      _addedOn = null;
    } else {
      _addedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _lastUsedOn;
  {
    final value = IsarCore.readLong(reader, 8);
    if (value == -9223372036854775808) {
      _lastUsedOn = null;
    } else {
      _lastUsedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _tokenUpdatedOn;
  {
    final value = IsarCore.readLong(reader, 9);
    if (value == -9223372036854775808) {
      _tokenUpdatedOn = null;
    } else {
      _tokenUpdatedOn =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = DeviceModel(
    id: _id,
    title: _title,
    description: _description,
    ip: _ip,
    port: _port,
    token: _token,
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
    case 0:
      return IsarCore.readId(reader);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readLong(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    case 7:
      {
        final value = IsarCore.readLong(reader, 7);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 8:
      {
        final value = IsarCore.readLong(reader, 8);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 9:
      {
        final value = IsarCore.readLong(reader, 9);
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
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
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
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (ipWPort != ignore) 1: ipWPort as String?,
          if (title != ignore) 2: title as String?,
          if (description != ignore) 3: description as String?,
          if (ip != ignore) 4: ip as String?,
          if (port != ignore) 5: port as int?,
          if (token != ignore) 6: token as String?,
          if (addedOn != ignore) 7: addedOn as DateTime?,
          if (lastUsedOn != ignore) 8: lastUsedOn as DateTime?,
          if (tokenUpdatedOn != ignore) 9: tokenUpdatedOn as DateTime?,
        }) >
        0;
  }
}

sealed class _DeviceModelUpdateAll {
  int call({
    required List<int> id,
    String? ipWPort,
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
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
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return collection.updateProperties(id, {
      if (ipWPort != ignore) 1: ipWPort as String?,
      if (title != ignore) 2: title as String?,
      if (description != ignore) 3: description as String?,
      if (ip != ignore) 4: ip as String?,
      if (port != ignore) 5: port as int?,
      if (token != ignore) 6: token as String?,
      if (addedOn != ignore) 7: addedOn as DateTime?,
      if (lastUsedOn != ignore) 8: lastUsedOn as DateTime?,
      if (tokenUpdatedOn != ignore) 9: tokenUpdatedOn as DateTime?,
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
    String? title,
    String? description,
    String? ip,
    int? port,
    String? token,
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
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (ipWPort != ignore) 1: ipWPort as String?,
      if (title != ignore) 2: title as String?,
      if (description != ignore) 3: description as String?,
      if (ip != ignore) 4: ip as String?,
      if (port != ignore) 5: port as int?,
      if (token != ignore) 6: token as String?,
      if (addedOn != ignore) 7: addedOn as DateTime?,
      if (lastUsedOn != ignore) 8: lastUsedOn as DateTime?,
      if (tokenUpdatedOn != ignore) 9: tokenUpdatedOn as DateTime?,
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
    Object? title = ignore,
    Object? description = ignore,
    Object? ip = ignore,
    Object? port = ignore,
    Object? token = ignore,
    Object? addedOn = ignore,
    Object? lastUsedOn = ignore,
    Object? tokenUpdatedOn = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (ipWPort != ignore) 1: ipWPort as String?,
        if (title != ignore) 2: title as String?,
        if (description != ignore) 3: description as String?,
        if (ip != ignore) 4: ip as String?,
        if (port != ignore) 5: port as int?,
        if (token != ignore) 6: token as String?,
        if (addedOn != ignore) 7: addedOn as DateTime?,
        if (lastUsedOn != ignore) 8: lastUsedOn as DateTime?,
        if (tokenUpdatedOn != ignore) 9: tokenUpdatedOn as DateTime?,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 2,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 3,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> ipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      addedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition> addedOnEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
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
          property: 7,
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
          property: 7,
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
          property: 7,
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
          property: 7,
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
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnEqualTo(
    DateTime? value,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnGreaterThan(
    DateTime? value,
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
      lastUsedOnGreaterThanOrEqualTo(
    DateTime? value,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnLessThan(
    DateTime? value,
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
      lastUsedOnLessThanOrEqualTo(
    DateTime? value,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      lastUsedOnBetween(
    DateTime? lower,
    DateTime? upper,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterFilterCondition>
      tokenUpdatedOnEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
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
          property: 9,
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
          property: 9,
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
          property: 9,
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
          property: 9,
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
          property: 9,
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByIpDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTokenDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByAddedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByLastUsedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> sortByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      sortByTokenUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByIpDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByPortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTokenDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByAddedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByLastUsedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy> thenByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterSortBy>
      thenByTokenUpdatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
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

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByIp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByPort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct> distinctByAddedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByLastUsedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<DeviceModel, DeviceModel, QAfterDistinct>
      distinctByTokenUpdatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
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

  QueryBuilder<DeviceModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, int, QAfterProperty> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, String, QAfterProperty> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty> addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty> lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, DateTime?, QAfterProperty>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
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

  QueryBuilder<DeviceModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, (R, int), QAfterProperty> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, (R, String), QAfterProperty> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty> addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty>
      lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, (R, DateTime?), QAfterProperty>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
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

  QueryBuilder<DeviceModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> ipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, int), QOperations> portProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, String), QOperations> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      addedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      lastUsedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<DeviceModel, (R1, R2, DateTime?), QOperations>
      tokenUpdatedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }
}
