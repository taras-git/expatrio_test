import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  factory Subject({
    int? userId,
    String? userUuid,
    String? lastName,
    String? firstName,
    String? fullName,
    String? email,
    String? role,
    bool? isAdmin,
    List<dynamic>? consoleRoles,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
