import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:layer/view/profile/views/profile_view.dart';
import 'package:layer/view/search/views/search_view.dart';
import 'package:sizer/sizer.dart';
import '../controller/auth_controller.dart';
import 'chat_screen.dart';
import 'list_lawyer.dart';
import 'package:layer/view/chat_screen.dart';

import 'mapscreen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  final x=Get.put(AuthController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder:(con)=>Scaffold(
            bottomNavigationBar:   CurvedNavigationBar(
              height: 7.h,
              backgroundColor: Color(0xffDA9F5C),
              onTap: con.change,
      index: con.current_index,
      items: [
        Icon(Icons.home, size: 4.h),
        Icon(Icons.chat, size: 4.h),
        Icon(Icons.search_rounded, size: 4.h),
        Icon(Icons.map, size: 4.h),
        Icon(Icons.account_circle, size: 4.h),
      ],
    ),
          body: IndexedStack(index: x.current_index,children: [
            List_layer(),
            Chat_Screen(),
            SearchView(),
            MapScreen(),
            ProfileView(),
          ],),
        ) );
  }
}
/*
Column(
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
 */