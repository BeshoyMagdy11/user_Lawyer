import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'C/Controller1.dart';
import 'V/Home_Screen.dart';
import 'V/create_login.dart';
import 'package:sizer/sizer.dart';

import 'V/family lawyer.dart';
import 'V/payment.dart';
import 'V/OnBoardingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage(),
      );
    });
  }
}

/*

 */
