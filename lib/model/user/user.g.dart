// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      accessToken: json['accessToken'] as String?,
      accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
          ? null
          : DateTime.parse(json['accessTokenExpiresAt'] as String),
      userRole: json['userRole'] as String?,
      xpm: json['xpm'] as bool?,
      userId: json['userId'] as int?,
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
      maxAgeSeconds: json['maxAgeSeconds'] as int?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
      'userRole': instance.userRole,
      'xpm': instance.xpm,
      'userId': instance.userId,
      'subject': instance.subject,
      'maxAgeSeconds': instance.maxAgeSeconds,
    };
