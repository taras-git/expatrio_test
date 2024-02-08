import 'package:coding_challenge/model/user/user.dart';
import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:coding_challenge/widgets/email_widgets.dart';
import 'package:coding_challenge/widgets/expatrio_graphic.dart';
import 'package:coding_challenge/widgets/password_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({
    super.key,
  });

  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<User>? user;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
            child: Column(
              children: [
                const ExpatrioLogo(),
                const SizedBox(height: 24),
                const EmailTitle(),
                EmailField(
                  ref: ref,
                  userEmailController: userEmailController,
                ),
                const SizedBox(height: 24),
                const PasswordTitle(),
                PasswordField(
                  ref: ref,
                  userPasswordController: userPasswordController,
                ),
                const SizedBox(height: 24),
                loginButton(user, ref),
                const Spacer(),
                const AnimatedBackground(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox loginButton(AsyncValue<User>? user, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: FilledButton(
        style: buttonStyle,
        onPressed: () {
          user = ref.watch(userProvider);
        },
        child: const Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
