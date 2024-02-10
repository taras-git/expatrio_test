import 'package:coding_challenge/shared/countries_constants.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountriesDropdown extends StatelessWidget {
  CountriesDropdown({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;
  final TextEditingController textController = TextEditingController(
      text: CountriesConstants.nationality.elementAt(0)["label"].toString());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        controller: textController,
        enabled: false,
        style: expatrioThemeData.textTheme.headlineMedium,
        cursorColor: Colors.black45,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          disabledBorder: OutlineInputBorder(),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
