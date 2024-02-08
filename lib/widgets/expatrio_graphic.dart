import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExpatrioLogo extends StatelessWidget {
  const ExpatrioLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Image.asset('assets/2019_XP_logo_white.png'),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Lottie.asset('assets/login-background.json'),
    );
  }
}
