import 'package:coding_challenge/model/user/user.dart';
import 'package:coding_challenge/services/user_api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final httpClient = http.Client();

String baseEndpoint = "https://dev-api.expatrio.com";

final passwordObscureProvider = StateProvider<bool>((ref) {
  return true;
});

/// User Login Details
///
String userLoginEndpoint = "$baseEndpoint/auth/login";

String userEmail = "";
final userEmailProvider = StateProvider<String>((ref) {
  return userEmail;
});

String userPassword = "";
final userPasswordProvider = StateProvider<String>((ref) {
  return userPassword;
});

final userProvider = FutureProvider<User>(
  (ref) async {
    return ref.read(userLoginServiceProvider).getUser(
          httpClient,
          endpoint: userLoginEndpoint,
          email: ref.watch(userEmailProvider),
          password: ref.watch(userPasswordProvider),
        );
  },
);
