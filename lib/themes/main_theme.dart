import 'package:flutter/material.dart';

const textColor = Colors.black;
const primaryTextThemeColor = Colors.white;

final expatrioThemeData = ThemeData(
  useMaterial3: true,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  canvasColor: Colors.transparent,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color.fromRGBO(65, 171, 158, 1),
    selectionColor: Color.fromRGBO(65, 171, 158, 1),
    selectionHandleColor: Color.fromRGBO(65, 171, 158, 1),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryTextThemeColor,
  ).copyWith(
    secondary: createMaterialColor(
      const Color.fromRGBO(65, 171, 158, 1),
    ),
  ),
  primaryColorDark: primaryTextThemeColor,
  primaryTextTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: primaryTextThemeColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: primaryTextThemeColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: primaryTextThemeColor,
    ),
    labelLarge: TextStyle(
      fontSize: 20,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 18,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontSize: 16,
      color: primaryTextThemeColor,
      fontWeight: FontWeight.w700,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 30,
      color: textColor,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 26,
      color: textColor,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      color: textColor,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      color: textColor,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      color: textColor,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      color: textColor,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      color: textColor,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      color: textColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      color: textColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: textColor,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: textColor,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      color: textColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: textColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: textColor,
    ),
  ),
);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};

  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
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
