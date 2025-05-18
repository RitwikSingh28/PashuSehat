// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FarmLocation _$FarmLocationFromJson(Map<String, dynamic> json) {
  return _FarmLocation.fromJson(json);
}

/// @nodoc
mixin _$FarmLocation {
  String get address => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;

  /// Serializes this FarmLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmLocationCopyWith<FarmLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmLocationCopyWith<$Res> {
  factory $FarmLocationCopyWith(
    FarmLocation value,
    $Res Function(FarmLocation) then,
  ) = _$FarmLocationCopyWithImpl<$Res, FarmLocation>;
  @useResult
  $Res call({String address, String pinCode});
}

/// @nodoc
class _$FarmLocationCopyWithImpl<$Res, $Val extends FarmLocation>
    implements $FarmLocationCopyWith<$Res> {
  _$FarmLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? address = null, Object? pinCode = null}) {
    return _then(
      _value.copyWith(
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            pinCode:
                null == pinCode
                    ? _value.pinCode
                    : pinCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FarmLocationImplCopyWith<$Res>
    implements $FarmLocationCopyWith<$Res> {
  factory _$$FarmLocationImplCopyWith(
    _$FarmLocationImpl value,
    $Res Function(_$FarmLocationImpl) then,
  ) = __$$FarmLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String pinCode});
}

/// @nodoc
class __$$FarmLocationImplCopyWithImpl<$Res>
    extends _$FarmLocationCopyWithImpl<$Res, _$FarmLocationImpl>
    implements _$$FarmLocationImplCopyWith<$Res> {
  __$$FarmLocationImplCopyWithImpl(
    _$FarmLocationImpl _value,
    $Res Function(_$FarmLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? address = null, Object? pinCode = null}) {
    return _then(
      _$FarmLocationImpl(
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        pinCode:
            null == pinCode
                ? _value.pinCode
                : pinCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmLocationImpl implements _FarmLocation {
  const _$FarmLocationImpl({required this.address, required this.pinCode});

  factory _$FarmLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmLocationImplFromJson(json);

  @override
  final String address;
  @override
  final String pinCode;

  @override
  String toString() {
    return 'FarmLocation(address: $address, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, pinCode);

  /// Create a copy of FarmLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmLocationImplCopyWith<_$FarmLocationImpl> get copyWith =>
      __$$FarmLocationImplCopyWithImpl<_$FarmLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmLocationImplToJson(this);
  }
}

abstract class _FarmLocation implements FarmLocation {
  const factory _FarmLocation({
    required final String address,
    required final String pinCode,
  }) = _$FarmLocationImpl;

  factory _FarmLocation.fromJson(Map<String, dynamic> json) =
      _$FarmLocationImpl.fromJson;

  @override
  String get address;
  @override
  String get pinCode;

  /// Create a copy of FarmLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmLocationImplCopyWith<_$FarmLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get userId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  FarmLocation get farmLocation => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get lastLogin => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String userId,
    String phoneNumber,
    String name,
    FarmLocation farmLocation,
    bool isVerified,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? lastLogin,
  });

  $FarmLocationCopyWith<$Res> get farmLocation;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? farmLocation = null,
    Object? isVerified = null,
    Object? createdAt = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            farmLocation:
                null == farmLocation
                    ? _value.farmLocation
                    : farmLocation // ignore: cast_nullable_to_non_nullable
                        as FarmLocation,
            isVerified:
                null == isVerified
                    ? _value.isVerified
                    : isVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            lastLogin:
                freezed == lastLogin
                    ? _value.lastLogin
                    : lastLogin // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FarmLocationCopyWith<$Res> get farmLocation {
    return $FarmLocationCopyWith<$Res>(_value.farmLocation, (value) {
      return _then(_value.copyWith(farmLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String phoneNumber,
    String name,
    FarmLocation farmLocation,
    bool isVerified,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? lastLogin,
  });

  @override
  $FarmLocationCopyWith<$Res> get farmLocation;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? farmLocation = null,
    Object? isVerified = null,
    Object? createdAt = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(
      _$UserImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        farmLocation:
            null == farmLocation
                ? _value.farmLocation
                : farmLocation // ignore: cast_nullable_to_non_nullable
                    as FarmLocation,
        isVerified:
            null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        lastLogin:
            freezed == lastLogin
                ? _value.lastLogin
                : lastLogin // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.userId,
    required this.phoneNumber,
    required this.name,
    required this.farmLocation,
    this.isVerified = false,
    @JsonKey(fromJson: _dateFromMillis) this.createdAt,
    @JsonKey(fromJson: _dateFromMillis) this.lastLogin,
  });

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String userId;
  @override
  final String phoneNumber;
  @override
  final String name;
  @override
  final FarmLocation farmLocation;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  final DateTime? lastLogin;

  @override
  String toString() {
    return 'User(userId: $userId, phoneNumber: $phoneNumber, name: $name, farmLocation: $farmLocation, isVerified: $isVerified, createdAt: $createdAt, lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.farmLocation, farmLocation) ||
                other.farmLocation == farmLocation) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    phoneNumber,
    name,
    farmLocation,
    isVerified,
    createdAt,
    lastLogin,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String userId,
    required final String phoneNumber,
    required final String name,
    required final FarmLocation farmLocation,
    final bool isVerified,
    @JsonKey(fromJson: _dateFromMillis) final DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) final DateTime? lastLogin,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get userId;
  @override
  String get phoneNumber;
  @override
  String get name;
  @override
  FarmLocation get farmLocation;
  @override
  bool get isVerified;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get lastLogin;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
