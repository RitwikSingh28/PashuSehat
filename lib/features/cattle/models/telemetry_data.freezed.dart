// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TelemetryData _$TelemetryDataFromJson(Map<String, dynamic> json) {
  return _TelemetryData.fromJson(json);
}

/// @nodoc
mixin _$TelemetryData {
  String get tagId => throw _privateConstructorUsedError;
  String get cattleId => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'pulseRate')
  int get heartRate => throw _privateConstructorUsedError;
  double get motionData => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 100)
  int? get batteryLevel => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TelemetryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelemetryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryDataCopyWith<TelemetryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryDataCopyWith<$Res> {
  factory $TelemetryDataCopyWith(
    TelemetryData value,
    $Res Function(TelemetryData) then,
  ) = _$TelemetryDataCopyWithImpl<$Res, TelemetryData>;
  @useResult
  $Res call({
    String tagId,
    String cattleId,
    double temperature,
    @JsonKey(name: 'pulseRate') int heartRate,
    double motionData,
    @JsonKey(defaultValue: 100) int? batteryLevel,
    int timestamp,
  });
}

/// @nodoc
class _$TelemetryDataCopyWithImpl<$Res, $Val extends TelemetryData>
    implements $TelemetryDataCopyWith<$Res> {
  _$TelemetryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelemetryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? cattleId = null,
    Object? temperature = null,
    Object? heartRate = null,
    Object? motionData = null,
    Object? batteryLevel = freezed,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            tagId:
                null == tagId
                    ? _value.tagId
                    : tagId // ignore: cast_nullable_to_non_nullable
                        as String,
            cattleId:
                null == cattleId
                    ? _value.cattleId
                    : cattleId // ignore: cast_nullable_to_non_nullable
                        as String,
            temperature:
                null == temperature
                    ? _value.temperature
                    : temperature // ignore: cast_nullable_to_non_nullable
                        as double,
            heartRate:
                null == heartRate
                    ? _value.heartRate
                    : heartRate // ignore: cast_nullable_to_non_nullable
                        as int,
            motionData:
                null == motionData
                    ? _value.motionData
                    : motionData // ignore: cast_nullable_to_non_nullable
                        as double,
            batteryLevel:
                freezed == batteryLevel
                    ? _value.batteryLevel
                    : batteryLevel // ignore: cast_nullable_to_non_nullable
                        as int?,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TelemetryDataImplCopyWith<$Res>
    implements $TelemetryDataCopyWith<$Res> {
  factory _$$TelemetryDataImplCopyWith(
    _$TelemetryDataImpl value,
    $Res Function(_$TelemetryDataImpl) then,
  ) = __$$TelemetryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tagId,
    String cattleId,
    double temperature,
    @JsonKey(name: 'pulseRate') int heartRate,
    double motionData,
    @JsonKey(defaultValue: 100) int? batteryLevel,
    int timestamp,
  });
}

/// @nodoc
class __$$TelemetryDataImplCopyWithImpl<$Res>
    extends _$TelemetryDataCopyWithImpl<$Res, _$TelemetryDataImpl>
    implements _$$TelemetryDataImplCopyWith<$Res> {
  __$$TelemetryDataImplCopyWithImpl(
    _$TelemetryDataImpl _value,
    $Res Function(_$TelemetryDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TelemetryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? cattleId = null,
    Object? temperature = null,
    Object? heartRate = null,
    Object? motionData = null,
    Object? batteryLevel = freezed,
    Object? timestamp = null,
  }) {
    return _then(
      _$TelemetryDataImpl(
        tagId:
            null == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String,
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        temperature:
            null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                    as double,
        heartRate:
            null == heartRate
                ? _value.heartRate
                : heartRate // ignore: cast_nullable_to_non_nullable
                    as int,
        motionData:
            null == motionData
                ? _value.motionData
                : motionData // ignore: cast_nullable_to_non_nullable
                    as double,
        batteryLevel:
            freezed == batteryLevel
                ? _value.batteryLevel
                : batteryLevel // ignore: cast_nullable_to_non_nullable
                    as int?,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryDataImpl implements _TelemetryData {
  const _$TelemetryDataImpl({
    required this.tagId,
    required this.cattleId,
    required this.temperature,
    @JsonKey(name: 'pulseRate') required this.heartRate,
    required this.motionData,
    @JsonKey(defaultValue: 100) this.batteryLevel,
    required this.timestamp,
  });

  factory _$TelemetryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryDataImplFromJson(json);

  @override
  final String tagId;
  @override
  final String cattleId;
  @override
  final double temperature;
  @override
  @JsonKey(name: 'pulseRate')
  final int heartRate;
  @override
  final double motionData;
  @override
  @JsonKey(defaultValue: 100)
  final int? batteryLevel;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'TelemetryData(tagId: $tagId, cattleId: $cattleId, temperature: $temperature, heartRate: $heartRate, motionData: $motionData, batteryLevel: $batteryLevel, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryDataImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            (identical(other.motionData, motionData) ||
                other.motionData == motionData) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tagId,
    cattleId,
    temperature,
    heartRate,
    motionData,
    batteryLevel,
    timestamp,
  );

  /// Create a copy of TelemetryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryDataImplCopyWith<_$TelemetryDataImpl> get copyWith =>
      __$$TelemetryDataImplCopyWithImpl<_$TelemetryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryDataImplToJson(this);
  }
}

abstract class _TelemetryData implements TelemetryData {
  const factory _TelemetryData({
    required final String tagId,
    required final String cattleId,
    required final double temperature,
    @JsonKey(name: 'pulseRate') required final int heartRate,
    required final double motionData,
    @JsonKey(defaultValue: 100) final int? batteryLevel,
    required final int timestamp,
  }) = _$TelemetryDataImpl;

  factory _TelemetryData.fromJson(Map<String, dynamic> json) =
      _$TelemetryDataImpl.fromJson;

  @override
  String get tagId;
  @override
  String get cattleId;
  @override
  double get temperature;
  @override
  @JsonKey(name: 'pulseRate')
  int get heartRate;
  @override
  double get motionData;
  @override
  @JsonKey(defaultValue: 100)
  int? get batteryLevel;
  @override
  int get timestamp;

  /// Create a copy of TelemetryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryDataImplCopyWith<_$TelemetryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
