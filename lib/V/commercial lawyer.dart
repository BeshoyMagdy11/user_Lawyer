import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../widget/castum_card.dart';
import '../widget/custom_search.dart';

class commercial_lawyer extends StatelessWidget {
  const commercial_lawyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:Text(''),
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace:Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),
              color: Color(0xffDA9F5C)
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.navigate_next),onPressed: (){
            Get.back();
          },color: Colors.black,iconSize: 45,),
        ],
        title: Text('محامي تجاري',style: TextStyle(fontSize: 20.sp,color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 12.5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1.5,
                    blurRadius: 1,
                    offset: Offset(0.5, 0.5),)]
              ),
              child: Custom_search(),
            ),
          ),
          SizedBox(height: 3.h,),
          Expanded(
              flex: 5,
              child: ListView(children: [
                Castum_Card('assets/images/pexels-cottonbro-4098274.png','مستشار ايه مصطفي','4.3','محافظه الشرقيه','متخصص في قضايا الأحوال التجاريه'),
                Castum_Card('assets/images/pexels-cottonbro-4098274.png','مستشار ايه مصطفي','4.3','محافظه الشرقيه','متخصص في قضايا الأحوال المدنية'),
                Castum_Card('assets/images/pexels-cottonbro-4098274.png','مستشار ايه مصطفي','4.3','محافظه الشرقيه','متخصص في قضايا الأحوال المدنية'),


              ],))


        ],
      ),
    );
  }
}
