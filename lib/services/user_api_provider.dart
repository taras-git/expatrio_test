import 'dart:convert';

import 'package:coding_challenge/model/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final userLoginServiceProvider =
    Provider<UserLoginApiService>((ref) => UserLoginApiService());

final requestHeaders = {
  'Accept': '*/*',
  'Content-Type': 'application/json',
};

class UserLoginApiService {
  Future<User> getUser({
    required String endpoint,
    required String email,
    required String password,
  }) async {
    final body = {
      "email": email,
      "password": password,
    };

    var encodedBody = json.encode(body);

    final response = await post(
      Uri.parse(endpoint),
      headers: requestHeaders,
      body: encodedBody,
    );

    if (response.statusCode == 200) {
      print(response.body);
      final user = User.fromJson(
        jsonDecode(response.body),
      );

      return user;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
