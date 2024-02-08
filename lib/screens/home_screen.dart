import 'package:coding_challenge/model/user/user.dart';
import 'package:coding_challenge/providers/data_provider.dart';

import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({
    super.key,
  });

  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    AsyncValue<User> user;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
            child: Column(
              children: [
                SizedBox(
                    width: 200,
                    child: Image.asset('assets/2019_XP_logo_white.png')),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.email_outlined),
                    ),
                    Text('EMAIL ADDRESS'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black45,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      hintText: 'Enter user email:',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    controller: userEmailController,
                    onChanged: (value) {
                      ref.read(userEmailProvider.notifier).state = value;
                    },
                  ),
                ),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.lock_outline),
                    ),
                    Text('PASSWORD'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black45,
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter user password:',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    controller: userPasswordController,
                    onChanged: (value) {
                      ref.read(userPasswordProvider.notifier).state = value;
                    },
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
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
                ),
                const Spacer(),
                Opacity(
                  opacity: 0.4,
                  child: Lottie.asset('assets/login-background.json'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final ButtonStyle buttonStyle = FilledButton.styleFrom(
  backgroundColor: expatrioThemeData.colorScheme.secondary,
  foregroundColor: Colors.black87,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(28)),
  ),
);
