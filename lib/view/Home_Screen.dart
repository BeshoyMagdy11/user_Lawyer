import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../C/contrroler_auth.dart';
import '../chat_room/chat_room.dart';
import '../widget/Custm_widget_home_screen.dart';
import 'chat_screen.dart';
import 'civil_lawyer.dart';
import 'commercial lawyer.dart';
import 'criminal lawyer.dart';
import 'family lawyer.dart';
import 'lawyer_admin.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  final x=Get.put(Con_Auth(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Con_Auth>(
        init: Con_Auth(),
        builder:(con)=>Scaffold(
            bottomNavigationBar:  FloatingNavbar(
              backgroundColor: Color(0xffDA9F5C),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),

              onTap: con.change,
      currentIndex: con.current_index,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
      ],
    ),
          body: IndexedStack(index: x.current_index,children: [
            Chat_room_vieww(),
            Chat_Screen()
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