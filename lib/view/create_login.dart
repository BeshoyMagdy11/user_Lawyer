import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../C/Controller1.dart';
import '../C/contrroler_auth.dart';
import 'Create_Account.dart';
import 'Home_Screen.dart';
import 'login_in.dart';
import 'package:sizer/sizer.dart';

class Create_login_account extends StatelessWidget {
  Create_login_account({Key? key}) : super(key: key);
  final x = Get.put(Con_Auth(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/g.png', height: 15.h),
                  Text(
                    'محاميك',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'سجل الدخول او انشي حساب',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  Text(
                    "اختر اي الخيارات التالية لتسجيل الدخول او لبدء",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  Text(
                    'حساب جديد',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  GetBuilder<Cont1>(
                    init: Cont1(),
                    builder: (c) => SizedBox(
                      height: 6.8.h,
                      child: ElevatedButton(
                        onPressed: () {
                          //  c.Facebook_sginup();
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.h, vertical: 0.7.h),
                          child: Text(
                            'الدخول بحساب الفيس بوك',
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3B5998),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      x.login();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.h, vertical: 0.3.h),
                      child: Text(
                        'الدخول بحساب جوجل',
                        style: TextStyle(
                            fontSize: 22.sp, color: Color(0xff393939)),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      side: BorderSide(width: 1, color: Color(0xff6D6D6D) //
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.3.h),
                    child: Text(
                      'او',
                      style: TextStyle(
                          color: Color(
                            0xff393939,
                          ),
                          fontSize: 20.sp),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(CreateAccount());
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 0.3.h, horizontal: 8.h),
                      child: Text(
                        'انشئ حساب جديد',
                        style: TextStyle(
                            fontSize: 22.sp, color: Color(0xffFFFFFF)),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffD59042),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      side: BorderSide(width: 0.4.w, color: Color(0xff6D6D6D) //
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 1.7.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.3.h),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.off(HomeScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.3.h, horizontal: 5.h),
                        child: Text(
                          'الدخول بحساب ضيف',
                          style: TextStyle(
                              fontSize: 22.sp, color: Color(0xff393939)),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFEE9D1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        side:
                            BorderSide(width: 0.4.w, color: Color(0xff6D6D6D) //
                                ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Color(0xffFEE9D1),
                    ),
                    onPressed: () {
                      Get.to(() => Lgin_IN());
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '،انا بالفعل امتلك حساب ',
                              style: TextStyle(
                                  fontSize: 18.sp, color: Colors.black)),
                          TextSpan(
                            text: '  تسجيل الدخول',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffD59042),
                                fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
  Text('ٍتسجيل الدخول',style: TextStyle(fontSize: 20.sp,color: Color(0xffD59042)),),
                  Text('  ،انا بالفعل امتلك حساب',style: TextStyle(fontSize: 20.sp,color: Colors.black,),
 */