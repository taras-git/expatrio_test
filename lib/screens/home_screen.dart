import 'package:coding_challenge/providers/data_provider.dart';
import 'package:coding_challenge/themes/main_theme.dart';
import 'package:coding_challenge/widgets/email_widgets.dart';
import 'package:coding_challenge/widgets/expatrio_graphic.dart';
import 'package:coding_challenge/widgets/password_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({
    super.key,
  });

  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
            child: Column(
              children: [
                const ExpatrioLogo(),
                const SizedBox(height: 24),
                const EmailTitle(),
                EmailField(
                  ref: ref,
                  userEmailController: userEmailController,
                ),
                const SizedBox(height: 24),
                const PasswordTitle(),
                PasswordField(
                  ref: ref,
                  userPasswordController: userPasswordController,
                ),
                const SizedBox(height: 24),
                loginButton(context, ref),
                const Spacer(),
                const AnimatedBackground(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox loginButton(BuildContext context, WidgetRef ref) {
    final loggedUser = ref.watch(userProvider);
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: FilledButton(
        style: buttonStyle,
        onPressed: () {
          loggedUser.when(data: (data) {
            showSuccessModalBotomSheet(context);
          }, error: (error, stk) {
            showErrorModalBottomSheet(context);
          }, loading: () {
            const Center(
              child: CircularProgressIndicator(),
            );
          });
        },
        child: const Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Future<void> showSuccessModalBotomSheet(BuildContext context) {
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
                const Text('Successful Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                const Text('You will be redirected to your dashboard'),
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
                    onPressed: () => {},
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
          height: 300,
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
                      color: Colors.red),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
