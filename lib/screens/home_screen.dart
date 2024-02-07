import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black45,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      hintText: 'Enter user email:',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black45,
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter user password:',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
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