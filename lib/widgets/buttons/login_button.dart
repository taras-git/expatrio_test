import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:coding_challenge/widgets/modal_bottom_sheets/login_modal_bottom_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerStatefulWidget {
  const LoginButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginButtomState();
}

class _LoginButtomState extends ConsumerState<LoginButton> {
  @override
  Widget build(BuildContext context) {
    final email = ref.watch(userEmailProvider);
    final password = ref.watch(userPasswordProvider);
    final user = ref.watch(userProvider);

    return Consumer(builder: (context, ref, child) {
      return SizedBox(
        width: double.infinity,
        height: 48,
        child: FilledButton(
          style: buttonStyle,
          onPressed: email.isEmpty || password.isEmpty
              ? null // disable LOGIN button if user didn't enter email or password
              : () {
                  user.when(data: (data) {
                    showSuccessModalBotomSheet(context, ref);
                  }, error: (error, stk) {
                    showErrorModalBottomSheet(context);
                  }, loading: () {
                    const Center(
                      child: CircularProgressIndicator(),
                    );
                  });
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
    });
  }
}
