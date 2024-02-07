import 'package:freezed_annotation/freezed_annotation.dart';

import 'subject.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? userRole,
    bool? xpm,
    int? userId,
    Subject? subject,
    int? maxAgeSeconds,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
