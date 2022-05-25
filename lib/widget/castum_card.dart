import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../C/Controller1.dart';
import '../V/payment use paypal.dart';
import 'castum_widget_payment.dart';

class Castum_Card extends StatelessWidget {
  String imge;
  String name;
  String stars;
  String city;
  String text;
  Castum_Card(this.imge, this.name, this.stars, this.city, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.white,
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(color: Color(0xffF6F6F6)),
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 2.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              child: Image.asset('assets/images/call.png'),
                              decoration: BoxDecoration(
                                  color: Color(0xffDA9F5C),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  height: 30.h,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Get.to(Payment_Use_PayPal());
                                          },
                                          child: Custom_payment(
                                            image: 'assets/images/paypal.png',
                                            height: 7.h,
                                            width: 7.h,
                                            text: 'paypal',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        InkWell(
                                          child: Custom_payment(
                                            image: 'assets/images/search.png',
                                            height: 7.h,
                                            width: 7.h,
                                            text: 'Google Pay',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        InkWell(
                                          child: Custom_payment(
                                            image:
                                            'assets/images/credit-card.png',
                                            height: 7.h,
                                            width: 7.h,
                                            text: ' credit card',
                                          ),
                                        )

                                        ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffDA9F5C),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30))),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 1.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: Image.asset(
                                'assets/images/Group 41329.png',
                                height: 4.h,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffDA9F5C),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          SizedBox(
                            width: 2.5.h,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 5.h,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFB222),
                          ),
                          Text(stars),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Image.asset(
                      imge,
                      height: 10.h,
                    )),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Image.asset(
                        'assets/images/shield-svgrepo-com (4).png',
                        height: 4.h),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سعر الحجز يبدا من 200 جنيه',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                    child: Image.asset('assets/images/XMLID_309_.png',
                        height: 3.2.h),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    city,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.9.h),
                    child: Image.asset(
                        'assets/images/location-svgrepo-com (1).png',
                        height: 4.5.h),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Text(
              ' احجز الان مقابلة ',
              style: TextStyle(fontSize: 22.sp, color: Colors.black),
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
          height: 3.h,
        ),
      ],
    );
  }
}
/*
Column(
                                    children: [
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      InkWell(
                                        child: Custom_payment(
                                          image: 'assets/images/paypal.png',
                                          height: 7.h,
                                          width: 7.h,
                                          text: 'paypal',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      InkWell(
                                        child: Custom_payment(
                                          image: 'assets/images/search.png',
                                          height: 7.h,
                                          width: 7.h,
                                          text: 'Google Pay',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      InkWell(
                                        child: Custom_payment(
                                          image:
                                              'assets/images/credit-card.png',
                                          height: 7.h,
                                          width: 7.h,
                                          text: ' credit card',
                                        ),
                                      )
                                    ],
                                  ),
*/