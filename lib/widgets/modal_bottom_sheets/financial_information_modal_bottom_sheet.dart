import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> showFinancialInformationModalBotomSheet(
    BuildContext context, WidgetRef ref) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 22),
              Text('Declaration of financial information',
                  style: expatrioThemeData.textTheme.displaySmall),
              Text('WHICH COUNTRY SERVES AS YOUR PRIMARY TAX RESIDENSE?*',
                  style: expatrioThemeData.textTheme.headlineSmall),
              Text('TAX IDENTIFICATION NUMBER',
                  style: expatrioThemeData.textTheme.headlineSmall),
              Text('+ ADD ANOTHER',
                  style: expatrioThemeData.textTheme.headlineSmall?.copyWith(
                      color: expatrioThemeData.colorScheme.secondary,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                width: 150,
                child: FilledButton(
                  style: buttonStyle,
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
