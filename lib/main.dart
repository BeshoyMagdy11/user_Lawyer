import 'package:firebase_core/firebase_core.dart';
import 'package:layer/routs/app_pages.dart';
import 'package:layer/view/introduction.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'controller/auth_controller.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Obx(
              () => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: authC.isSkipIntro.isTrue
                    ? authC.isAuth.isTrue
                        ? Routes.HOOME
                        : Routes.LOGIN
                    : Routes.INTRODUCTION,
                getPages: AppPages.routes,
              ),
            );
          }
          return FutureBuilder(
            future: authC.firstInitialized(),
            builder: (context, snapshot) => SplashScreen(),
          );
        },
      );
    });
  }
}


/*

 */
