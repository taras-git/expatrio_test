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
          child: Column(
            children: [
              Image.asset('assets/2019_XP_logo_white.png'),
              Row(
                children: [
                  Icon(Icons.email_outlined),
                  const Text('EMAIL ADDRESS'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.lock_outline),
                  const Text('PASSWORD'),
                ],
              ),
              const Text('Login'),
            ],
          ),
        ),
      ),
    );
  }
}
