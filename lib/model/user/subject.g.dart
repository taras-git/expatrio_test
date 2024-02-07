// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      userId: json['userId'] as int?,
      userUuid: json['userUuid'] as String?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      consoleRoles: json['consoleRoles'] as List<dynamic>?,
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userUuid': instance.userUuid,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'fullName': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'isAdmin': instance.isAdmin,
      'consoleRoles': instance.consoleRoles,
    };
