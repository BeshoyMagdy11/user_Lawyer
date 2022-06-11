import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'create_login.dart';

class OnBoardingPage extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
      ),

      pages: [
        PageViewModel(
          title: "أضمن حقك",
          body:
              "ادفع وقسط اتعاب المحاماه بالطريقه المناسبه ليك مع افضل حلول دفع رقميه",
          image: Image.asset(
            'assets/images/6.jpeg',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "أوراقك عندنا",
          body: 'اشتري  كل مستنداتك وعقودك من "محاميك"  وهتوصلك لحد البيت ',
          image: Image.asset(
            'assets/images/8.jpeg',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "متفوتش حاجه",
          body: "هنفكرك بمواعيد القضايا والجلسات باسهل طريقه",
          image: Image.asset(
            'assets/images/7.jpeg',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "محاميك من اي مكان",
          body: "اعمل فيديو كول واستشير افضل المحامين من اي مكان",
          image: Image.asset(
            'assets/images/5.jpeg',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => Get.off(Create_login_account()),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showBackButton: false,
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: Text('تخطي',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(213, 144, 66, 1),
          )),
      next: Icon(
        Icons.arrow_forward,
        color: Color.fromRGBO(213, 144, 66, 1),
      ),
      done: Text('التالي',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(213, 144, 66, 1),
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xffD59042),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      animationDuration: 1,
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
