import 'package:flutter/material.dart';

import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE8FFE8),
body: SplashBody(),
    );
  }
}
