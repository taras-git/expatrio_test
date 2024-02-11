import 'package:coding_challenge/widgets/text_fields/email_widgets.dart';
import 'package:coding_challenge/widgets/expatrio_graphic.dart';
import 'package:coding_challenge/widgets/buttons/login_button.dart';
import 'package:coding_challenge/widgets/text_fields/password_widgets.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 36.0) +
                const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const ExpatrioLogo(),
                const SizedBox(height: 20),
                const EmailTitle(),
                EmailField(
                  ref: ref,
                  userEmailController: userEmailController,
                ),
                const SizedBox(height: 10),
                const PasswordTitle(),
                PasswordField(
                  ref: ref,
                  userPasswordController: userPasswordController,
                ),
                const SizedBox(height: 20),
                const LoginButton(),
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
