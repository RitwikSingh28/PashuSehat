// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TelemetryStats _$TelemetryStatsFromJson(Map<String, dynamic> json) {
  return _TelemetryStats.fromJson(json);
}

/// @nodoc
mixin _$TelemetryStats {
  double get avgTemperature => throw _privateConstructorUsedError;
  int get avgPulseRate => throw _privateConstructorUsedError;
  double get avgMotion => throw _privateConstructorUsedError;
  double? get lastBatteryLevel => throw _privateConstructorUsedError;
  int get readingCount => throw _privateConstructorUsedError;

  /// Serializes this TelemetryStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelemetryStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryStatsCopyWith<TelemetryStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryStatsCopyWith<$Res> {
  factory $TelemetryStatsCopyWith(
    TelemetryStats value,
    $Res Function(TelemetryStats) then,
  ) = _$TelemetryStatsCopyWithImpl<$Res, TelemetryStats>;
  @useResult
  $Res call({
    double avgTemperature,
    int avgPulseRate,
    double avgMotion,
    double? lastBatteryLevel,
    int readingCount,
  });
}

/// @nodoc
class _$TelemetryStatsCopyWithImpl<$Res, $Val extends TelemetryStats>
    implements $TelemetryStatsCopyWith<$Res> {
  _$TelemetryStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelemetryStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTemperature = null,
    Object? avgPulseRate = null,
    Object? avgMotion = null,
    Object? lastBatteryLevel = freezed,
    Object? readingCount = null,
  }) {
    return _then(
      _value.copyWith(
            avgTemperature:
                null == avgTemperature
                    ? _value.avgTemperature
                    : avgTemperature // ignore: cast_nullable_to_non_nullable
                        as double,
            avgPulseRate:
                null == avgPulseRate
                    ? _value.avgPulseRate
                    : avgPulseRate // ignore: cast_nullable_to_non_nullable
                        as int,
            avgMotion:
                null == avgMotion
                    ? _value.avgMotion
                    : avgMotion // ignore: cast_nullable_to_non_nullable
                        as double,
            lastBatteryLevel:
                freezed == lastBatteryLevel
                    ? _value.lastBatteryLevel
                    : lastBatteryLevel // ignore: cast_nullable_to_non_nullable
                        as double?,
            readingCount:
                null == readingCount
                    ? _value.readingCount
                    : readingCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TelemetryStatsImplCopyWith<$Res>
    implements $TelemetryStatsCopyWith<$Res> {
  factory _$$TelemetryStatsImplCopyWith(
    _$TelemetryStatsImpl value,
    $Res Function(_$TelemetryStatsImpl) then,
  ) = __$$TelemetryStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double avgTemperature,
    int avgPulseRate,
    double avgMotion,
    double? lastBatteryLevel,
    int readingCount,
  });
}

/// @nodoc
class __$$TelemetryStatsImplCopyWithImpl<$Res>
    extends _$TelemetryStatsCopyWithImpl<$Res, _$TelemetryStatsImpl>
    implements _$$TelemetryStatsImplCopyWith<$Res> {
  __$$TelemetryStatsImplCopyWithImpl(
    _$TelemetryStatsImpl _value,
    $Res Function(_$TelemetryStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TelemetryStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTemperature = null,
    Object? avgPulseRate = null,
    Object? avgMotion = null,
    Object? lastBatteryLevel = freezed,
    Object? readingCount = null,
  }) {
    return _then(
      _$TelemetryStatsImpl(
        avgTemperature:
            null == avgTemperature
                ? _value.avgTemperature
                : avgTemperature // ignore: cast_nullable_to_non_nullable
                    as double,
        avgPulseRate:
            null == avgPulseRate
                ? _value.avgPulseRate
                : avgPulseRate // ignore: cast_nullable_to_non_nullable
                    as int,
        avgMotion:
            null == avgMotion
                ? _value.avgMotion
                : avgMotion // ignore: cast_nullable_to_non_nullable
                    as double,
        lastBatteryLevel:
            freezed == lastBatteryLevel
                ? _value.lastBatteryLevel
                : lastBatteryLevel // ignore: cast_nullable_to_non_nullable
                    as double?,
        readingCount:
            null == readingCount
                ? _value.readingCount
                : readingCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryStatsImpl implements _TelemetryStats {
  const _$TelemetryStatsImpl({
    required this.avgTemperature,
    required this.avgPulseRate,
    required this.avgMotion,
    this.lastBatteryLevel,
    required this.readingCount,
  });

  factory _$TelemetryStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryStatsImplFromJson(json);

  @override
  final double avgTemperature;
  @override
  final int avgPulseRate;
  @override
  final double avgMotion;
  @override
  final double? lastBatteryLevel;
  @override
  final int readingCount;

  @override
  String toString() {
    return 'TelemetryStats(avgTemperature: $avgTemperature, avgPulseRate: $avgPulseRate, avgMotion: $avgMotion, lastBatteryLevel: $lastBatteryLevel, readingCount: $readingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryStatsImpl &&
            (identical(other.avgTemperature, avgTemperature) ||
                other.avgTemperature == avgTemperature) &&
            (identical(other.avgPulseRate, avgPulseRate) ||
                other.avgPulseRate == avgPulseRate) &&
            (identical(other.avgMotion, avgMotion) ||
                other.avgMotion == avgMotion) &&
            (identical(other.lastBatteryLevel, lastBatteryLevel) ||
                other.lastBatteryLevel == lastBatteryLevel) &&
            (identical(other.readingCount, readingCount) ||
                other.readingCount == readingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    avgTemperature,
    avgPulseRate,
    avgMotion,
    lastBatteryLevel,
    readingCount,
  );

  /// Create a copy of TelemetryStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryStatsImplCopyWith<_$TelemetryStatsImpl> get copyWith =>
      __$$TelemetryStatsImplCopyWithImpl<_$TelemetryStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryStatsImplToJson(this);
  }
}

abstract class _TelemetryStats implements TelemetryStats {
  const factory _TelemetryStats({
    required final double avgTemperature,
    required final int avgPulseRate,
    required final double avgMotion,
    final double? lastBatteryLevel,
    required final int readingCount,
  }) = _$TelemetryStatsImpl;

  factory _TelemetryStats.fromJson(Map<String, dynamic> json) =
      _$TelemetryStatsImpl.fromJson;

  @override
  double get avgTemperature;
  @override
  int get avgPulseRate;
  @override
  double get avgMotion;
  @override
  double? get lastBatteryLevel;
  @override
  int get readingCount;

  /// Create a copy of TelemetryStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryStatsImplCopyWith<_$TelemetryStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
