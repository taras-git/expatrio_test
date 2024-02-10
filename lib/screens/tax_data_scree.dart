import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: const SafeArea(
        child: Center(
          child: Text('tds'),
        ),
      ),
    );
  }
}
