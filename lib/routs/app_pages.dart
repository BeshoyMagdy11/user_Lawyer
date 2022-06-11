// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/Home_Screen.dart';
import '../view/OnBoardingPage.dart';
import '../view/chat_room/chat_room.dart';
import '../view/create_login.dart';
import '../view/login_in.dart';
import '../view/mapscreen.dart';
import '../view/profile/views/profile_view.dart';
import '../view/search/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Paths.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(name: Paths.LOGIN, page: () => Lgin_IN()),
    GetPage(name: Paths.INTRODUCTION, page: () => OnBoardingPage()),
    GetPage(name: Paths.CHAT_ROOM, page: () => Chat_room_vieww()),
    GetPage(name: Paths.PROFILE, page: ()=>ProfileView()),
    GetPage(name: Paths.SEARCH, page:()=> SearchView()),
    GetPage(name: Paths.MapSample, page: ()=>MapScreen()),
    GetPage(name: Paths.Creat_Sign, page: ()=>Create_login_account())
  ];
}
