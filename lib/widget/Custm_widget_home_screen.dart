import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class Custm_Widget_Home_Screen extends StatelessWidget {
   String image;
   String text;
   Custm_Widget_Home_Screen(this.image,this.text,this.page);
   dynamic page;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(page,);
      },
      child: Container(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.h,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(text,style: TextStyle(fontSize: 20.sp),),
              SizedBox(width: 5.h,),
              Image.asset(image,width: 12.w,height: 10.h,),


            ],
          ),
        ),
      ),
    );
  }
}
