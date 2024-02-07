import 'package:coding_challenge/screens/home_screen.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expatrio Demo',
      theme: expatrioThemeData,
      home: const HomeScreen(),
    );
  }
}
