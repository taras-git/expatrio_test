import 'package:coding_challenge/themes/main_theme.dart';
import 'package:coding_challenge/widgets/text_fields/country_dropdown_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> showFinancialInformationModalBotomSheet(
    BuildContext context, WidgetRef ref) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return LayoutBuilder(builder: (
        context,
        constraints,
      ) {
        double maxHeight = (3 / 4) * MediaQuery.of(context).size.height;
        return SizedBox(
          height: constraints.maxHeight > maxHeight
              ? maxHeight
              : constraints.maxHeight,
          child: Center(
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
                  const SizedBox(height: 10),
                  Text('WHICH COUNTRY SERVES AS YOUR PRIMARY TAX RESIDENSE?*',
                      style: expatrioThemeData.textTheme.headlineSmall),
                  const SizedBox(height: 10),
                  CountriesDropdown(
                    ref: ref,
                  ),
                  const SizedBox(height: 10),
                  Text('TAX IDENTIFICATION NUMBER',
                      style: expatrioThemeData.textTheme.headlineSmall),
                  const SizedBox(height: 10),
                  Text('+ ADD ANOTHER',
                      style: expatrioThemeData.textTheme.headlineSmall
                          ?.copyWith(
                              color: expatrioThemeData.colorScheme.secondary,
                              fontWeight: FontWeight.w700)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      Expanded(
                        child: Text(
                          'I confirm above tax residency and US self-declaration is true and accurate',
                          style: expatrioThemeData.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
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
                  ),
                ],
              ),
            ),
          ),
        );
      });
    },
  );
}
