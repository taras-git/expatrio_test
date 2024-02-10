import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> showSuccessModalBotomSheet(BuildContext context, WidgetRef ref) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20),
              Icon(
                Icons.check_circle_sharp,
                color: expatrioThemeData.colorScheme.secondary,
                size: 70,
              ),
              const SizedBox(height: 20),
              const Text('Successfull Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              Text('You will be redirected to your dashboard',
                  style: expatrioThemeData.textTheme.displayMedium),
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: FilledButton(
                  style: buttonStyle,
                  child: const Text(
                    'Got it',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    // invalidate the credentials
                    ref.read(userEmailProvider.notifier).state = '';
                    ref.read(userPasswordProvider.notifier).state = '';
                    context.pop(); // close the Modal sheet
                    context.pushNamed('taxDataScreen');
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showErrorModalBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return const SizedBox(
        height: 350,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.warning_rounded,
                color: Colors.red,
                size: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opps...Something went wrong...',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Please enter correct credentials and try again',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
      );
    },
  );
}
