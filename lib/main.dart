import 'package:flutter/material.dart';
import 'package:vigatuble_fruit/splash/presentation/SplashView.dart';
void main() {
  runApp( const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashView(),
    );
  }
}