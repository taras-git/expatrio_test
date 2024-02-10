import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailTitle extends StatelessWidget {
  const EmailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.email_outlined),
        ),
        Text('EMAIL ADDRESS'),
      ],
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.ref,
    required this.userEmailController,
  });

  final TextEditingController userEmailController;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: expatrioThemeData.textTheme.headlineMedium,
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
    );
  }
}
