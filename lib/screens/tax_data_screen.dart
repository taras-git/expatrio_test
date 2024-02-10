import 'package:coding_challenge/themes/main_theme.dart';
import 'package:coding_challenge/widgets/modal_bottom_sheets/financial_information_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'package:go_router/go_router.dart';

class TaxDataScreen extends ConsumerWidget {
  const TaxDataScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/CryingGirl.svg',
                height: 250,
              ),
              Text('Uh-Oh!', style: expatrioThemeData.textTheme.displayMedium),
              const Text('We need your tax data in'),
              const Text('in order dor you to access'),
              const Text('your account'),
              const SizedBox(height: 16),
              SizedBox(
                width: 300,
                child: FilledButton(
                  style: buttonStyle,
                  child: Text(
                    'UPDATE YOUR TAX DATA',
                    style: expatrioThemeData.primaryTextTheme.titleMedium,
                  ),
                  onPressed: () {
                    showFinancialInformationModalBotomSheet(context, ref);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
