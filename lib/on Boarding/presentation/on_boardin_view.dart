import 'package:flutter/material.dart';
import 'package:vigatuble_fruit/on%20Boarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8FFE8),
      body: OnBoardingViewBody(),
    );
  }
}