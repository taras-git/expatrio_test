import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordTitle extends StatelessWidget {
  const PasswordTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.lock_outline),
        ),
        Text('PASSWORD'),
      ],
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.userPasswordController,
    required this.ref,
  });

  final WidgetRef ref;
  final TextEditingController userPasswordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.black45,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.visiblePassword,
        enableSuggestions: false,
        obscureText: ref.watch(passwordObscureProvider),
        decoration: InputDecoration(
          hintText: 'Enter user password:',
          hintStyle: const TextStyle(color: Colors.grey),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(ref.read(passwordObscureProvider.notifier).state
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              ref.read(passwordObscureProvider.notifier).state =
                  !ref.read(passwordObscureProvider.notifier).state;
            },
            color: expatrioThemeData.colorScheme.secondary,
          ),
        ),
        controller: userPasswordController,
        onChanged: (value) {
          ref.read(userPasswordProvider.notifier).state = value;
        },
      ),
    );
  }
}
