// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get accessToken => throw _privateConstructorUsedError;
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  bool? get xpm => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  Subject? get subject => throw _privateConstructorUsedError;
  int? get maxAgeSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? accessToken,
      DateTime? accessTokenExpiresAt,
      String? userRole,
      bool? xpm,
      int? userId,
      Subject? subject,
      int? maxAgeSeconds});

  $SubjectCopyWith<$Res>? get subject;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? userRole = freezed,
    Object? xpm = freezed,
    Object? userId = freezed,
    Object? subject = freezed,
    Object? maxAgeSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      xpm: freezed == xpm
          ? _value.xpm
          : xpm // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject?,
      maxAgeSeconds: freezed == maxAgeSeconds
          ? _value.maxAgeSeconds
          : maxAgeSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $SubjectCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      DateTime? accessTokenExpiresAt,
      String? userRole,
      bool? xpm,
      int? userId,
      Subject? subject,
      int? maxAgeSeconds});

  @override
  $SubjectCopyWith<$Res>? get subject;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? userRole = freezed,
    Object? xpm = freezed,
    Object? userId = freezed,
    Object? subject = freezed,
    Object? maxAgeSeconds = freezed,
  }) {
    return _then(_$UserImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      xpm: freezed == xpm
          ? _value.xpm
          : xpm // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject?,
      maxAgeSeconds: freezed == maxAgeSeconds
          ? _value.maxAgeSeconds
          : maxAgeSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.accessToken,
      this.accessTokenExpiresAt,
      this.userRole,
      this.xpm,
      this.userId,
      this.subject,
      this.maxAgeSeconds});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final DateTime? accessTokenExpiresAt;
  @override
  final String? userRole;
  @override
  final bool? xpm;
  @override
  final int? userId;
  @override
  final Subject? subject;
  @override
  final int? maxAgeSeconds;

  @override
  String toString() {
    return 'User(accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, userRole: $userRole, xpm: $xpm, userId: $userId, subject: $subject, maxAgeSeconds: $maxAgeSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.xpm, xpm) || other.xpm == xpm) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.maxAgeSeconds, maxAgeSeconds) ||
                other.maxAgeSeconds == maxAgeSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken,
      accessTokenExpiresAt, userRole, xpm, userId, subject, maxAgeSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final String? accessToken,
      final DateTime? accessTokenExpiresAt,
      final String? userRole,
      final bool? xpm,
      final int? userId,
      final Subject? subject,
      final int? maxAgeSeconds}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get accessToken;
  @override
  DateTime? get accessTokenExpiresAt;
  @override
  String? get userRole;
  @override
  bool? get xpm;
  @override
  int? get userId;
  @override
  Subject? get subject;
  @override
  int? get maxAgeSeconds;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
