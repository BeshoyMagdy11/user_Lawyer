import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/castum_widget_payment.dart';
import 'package:sizer/sizer.dart';


class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(' اختر وسيلة دفع',style: TextStyle(fontSize: 20.sp,color: Colors.black),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          SizedBox(height:2.h,),
          Custom_payment(image: 'assets/images/paypal.png', height:7.h ,width: 7.h,text: 'paypal',),
          SizedBox(height: 5.h,),
          Custom_payment(image: 'assets/images/search.png', height:7.h ,width: 7.h,text: 'Google Pay',),
          SizedBox(height: 5.h,),
          Custom_payment(image: 'assets/images/credit-card.png', height:7.h ,width: 7.h,text: 'Google Pay',)


        ],
      ) ,
    );
  }
}
