import 'package:flutter/material.dart';

import '../../../core/constans.dart';
import '../../../on Boarding/presentation/on_boardin_view.dart';



class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {


  @override
  void initState(){
    super.initState();
    goToOnBoardingView(context);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Column(
        children: [
          const Spacer(),
          Center(
            child: Text(
              "LUX&FRAÎCHE",
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 51,
                color: kMainColor,
              ),
            ),
          ),
          Center(
            child: Text(
              "gesond Iessen gesond Liewen",
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff74D161),
              ),
            ),
          ),
          const Spacer(),
          Image.asset('assets/images/image_splash.png'),
          const Spacer(),
        ],
      ),
    );
  }

  void goToOnBoardingView(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingView() ),
      );
    });
  }}