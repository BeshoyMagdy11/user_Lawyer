import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_payment extends StatelessWidget {
  String image;
  double height;
  double width;
  String text;
  Custom_payment(
      {required this.text,
      required this.image,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        children: [
          Container(
            height: 7.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 11.h,
                ),
                Image.asset(
                  image,
                  height: height,
                  width: width,
                ),
                SizedBox(
                  width: 2.h,
                ),
                Text(
                  text,
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
