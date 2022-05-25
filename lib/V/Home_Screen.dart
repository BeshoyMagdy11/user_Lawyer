import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widget/Custm_widget_home_screen.dart';
import 'civil_lawyer.dart';
import 'commercial lawyer.dart';
import 'criminal lawyer.dart';
import 'family lawyer.dart';
import 'lawyer_admin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color(0xffDA9F5C)),
        ),
        title: Text(
          ' أختار التخصص ',
          style: TextStyle(fontSize: 20.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: ListView(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Custm_Widget_Home_Screen(
                      'assets/images/family-charity-svgrepo-com.png',
                      'محامي أسرة',
                      Family_Lawyer()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Divider(color: Color(0xff707070)),
                  ),
                  Custm_Widget_Home_Screen(
                      'assets/images/person-svgrepo-com (1).png',
                      'محامي مدني',
                      civil_lawyer()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Divider(color: Color(0xff707070)),
                  ),
                  Custm_Widget_Home_Screen(
                      'assets/images/business-bag-svgrepo-com.png',
                      ' محامي تجاري',
                      commercial_lawyer()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Divider(color: Color(0xff707070)),
                  ),
                  Custm_Widget_Home_Screen(
                      'assets/images/flag-svgrepo-com (1).png',
                      '  محامي إداري',
                      Lawyer_Admin()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Divider(color: Color(0xff707070)),
                  ),
                  Custm_Widget_Home_Screen(
                      'assets/images/captured-criminal-hands-svgrepo-com.png',
                      '   محامي جنائي',
                      Criminal_Lawyer()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Divider(color: Color(0xff707070)),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
