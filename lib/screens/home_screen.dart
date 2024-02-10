import 'package:coding_challenge/widgets/email_widgets.dart';
import 'package:coding_challenge/widgets/expatrio_graphic.dart';
import 'package:coding_challenge/widgets/login_button.dart';
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
                loginButton(context, ref),
                const Spacer(),
                const AnimatedBackground(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
