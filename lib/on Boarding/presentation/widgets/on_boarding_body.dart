import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';
class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Stack(

      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        GestureDetector(
          onTap: () {
          //   // Perform navigation logic here
          //   // For example, you can use Navigator to navigate to another view
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => LoginView()),
          //   );
          },
          child: Visibility(
            visible: pageController!.hasClients
                ? (pageController?.page == 2 ? false : true)
                : true,
            child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              right: 32,
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),

        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LoginView()),
                  // );
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
