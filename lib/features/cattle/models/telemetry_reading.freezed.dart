// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_reading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TelemetryReading _$TelemetryReadingFromJson(Map<String, dynamic> json) {
  return _TelemetryReading.fromJson(json);
}

/// @nodoc
mixin _$TelemetryReading {
  String get tagId => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get pulseRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'motionData')
  double get motion => throw _privateConstructorUsedError;
  double? get batteryLevel => throw _privateConstructorUsedError;

  /// Serializes this TelemetryReading to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryReadingCopyWith<TelemetryReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryReadingCopyWith<$Res> {
  factory $TelemetryReadingCopyWith(
    TelemetryReading value,
    $Res Function(TelemetryReading) then,
  ) = _$TelemetryReadingCopyWithImpl<$Res, TelemetryReading>;
  @useResult
  $Res call({
    String tagId,
    int timestamp,
    double temperature,
    int pulseRate,
    @JsonKey(name: 'motionData') double motion,
    double? batteryLevel,
  });
}

/// @nodoc
class _$TelemetryReadingCopyWithImpl<$Res, $Val extends TelemetryReading>
    implements $TelemetryReadingCopyWith<$Res> {
  _$TelemetryReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? timestamp = null,
    Object? temperature = null,
    Object? pulseRate = null,
    Object? motion = null,
    Object? batteryLevel = freezed,
  }) {
    return _then(
      _value.copyWith(
            tagId:
                null == tagId
                    ? _value.tagId
                    : tagId // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as int,
            temperature:
                null == temperature
                    ? _value.temperature
                    : temperature // ignore: cast_nullable_to_non_nullable
                        as double,
            pulseRate:
                null == pulseRate
                    ? _value.pulseRate
                    : pulseRate // ignore: cast_nullable_to_non_nullable
                        as int,
            motion:
                null == motion
                    ? _value.motion
                    : motion // ignore: cast_nullable_to_non_nullable
                        as double,
            batteryLevel:
                freezed == batteryLevel
                    ? _value.batteryLevel
                    : batteryLevel // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TelemetryReadingImplCopyWith<$Res>
    implements $TelemetryReadingCopyWith<$Res> {
  factory _$$TelemetryReadingImplCopyWith(
    _$TelemetryReadingImpl value,
    $Res Function(_$TelemetryReadingImpl) then,
  ) = __$$TelemetryReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String tagId,
    int timestamp,
    double temperature,
    int pulseRate,
    @JsonKey(name: 'motionData') double motion,
    double? batteryLevel,
  });
}

/// @nodoc
class __$$TelemetryReadingImplCopyWithImpl<$Res>
    extends _$TelemetryReadingCopyWithImpl<$Res, _$TelemetryReadingImpl>
    implements _$$TelemetryReadingImplCopyWith<$Res> {
  __$$TelemetryReadingImplCopyWithImpl(
    _$TelemetryReadingImpl _value,
    $Res Function(_$TelemetryReadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? timestamp = null,
    Object? temperature = null,
    Object? pulseRate = null,
    Object? motion = null,
    Object? batteryLevel = freezed,
  }) {
    return _then(
      _$TelemetryReadingImpl(
        tagId:
            null == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as int,
        temperature:
            null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                    as double,
        pulseRate:
            null == pulseRate
                ? _value.pulseRate
                : pulseRate // ignore: cast_nullable_to_non_nullable
                    as int,
        motion:
            null == motion
                ? _value.motion
                : motion // ignore: cast_nullable_to_non_nullable
                    as double,
        batteryLevel:
            freezed == batteryLevel
                ? _value.batteryLevel
                : batteryLevel // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryReadingImpl implements _TelemetryReading {
  const _$TelemetryReadingImpl({
    required this.tagId,
    required this.timestamp,
    required this.temperature,
    required this.pulseRate,
    @JsonKey(name: 'motionData') required this.motion,
    this.batteryLevel,
  });

  factory _$TelemetryReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryReadingImplFromJson(json);

  @override
  final String tagId;
  @override
  final int timestamp;
  @override
  final double temperature;
  @override
  final int pulseRate;
  @override
  @JsonKey(name: 'motionData')
  final double motion;
  @override
  final double? batteryLevel;

  @override
  String toString() {
    return 'TelemetryReading(tagId: $tagId, timestamp: $timestamp, temperature: $temperature, pulseRate: $pulseRate, motion: $motion, batteryLevel: $batteryLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryReadingImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.pulseRate, pulseRate) ||
                other.pulseRate == pulseRate) &&
            (identical(other.motion, motion) || other.motion == motion) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tagId,
    timestamp,
    temperature,
    pulseRate,
    motion,
    batteryLevel,
  );

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryReadingImplCopyWith<_$TelemetryReadingImpl> get copyWith =>
      __$$TelemetryReadingImplCopyWithImpl<_$TelemetryReadingImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryReadingImplToJson(this);
  }
}

abstract class _TelemetryReading implements TelemetryReading {
  const factory _TelemetryReading({
    required final String tagId,
    required final int timestamp,
    required final double temperature,
    required final int pulseRate,
    @JsonKey(name: 'motionData') required final double motion,
    final double? batteryLevel,
  }) = _$TelemetryReadingImpl;

  factory _TelemetryReading.fromJson(Map<String, dynamic> json) =
      _$TelemetryReadingImpl.fromJson;

  @override
  String get tagId;
  @override
  int get timestamp;
  @override
  double get temperature;
  @override
  int get pulseRate;
  @override
  @JsonKey(name: 'motionData')
  double get motion;
  @override
  double? get batteryLevel;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryReadingImplCopyWith<_$TelemetryReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
