import 'package:coding_challenge/screens/home_screen.dart';
import 'package:coding_challenge/screens/tax_data_screen.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Expatrio Demo',
      theme: expatrioThemeData,
      routerConfig: _router,
    );
  }
}

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'homeScreen',
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: 'taxDataScreen',
      path: '/taxData',
      builder: (context, state) => TaxDataScreen(),
    ),
  ],
);
