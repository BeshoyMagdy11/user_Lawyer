import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:layer/C/Controller1.dart';
import 'package:sizer/sizer.dart';

import '../routs/app_pages.dart';



class Payment_Use_PayPal extends StatelessWidget {
   Payment_Use_PayPal({Key? key}) : super(key: key);
  TextEditingController x=TextEditingController();
   TextEditingController y=TextEditingController();
   TextEditingController z=TextEditingController();
   TextEditingController u=TextEditingController();
   final fornKey = GlobalKey<FormState>();
   final controolr=Get.put(Cont1());





   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.payment,color: Colors.black,),
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
        title: Text(' ادفع بواسة باي بال ',style: TextStyle(fontSize: 20.sp,color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: fornKey,
          child: Column(children: [
            SizedBox(height: 3.h,),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: x,
              cursorColor: Colors.black,
              autocorrect: true,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                labelText: 'Card Numer',
                labelStyle: TextStyle(color: Colors.black,fontSize: 20.sp),
                hintStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                  BorderSide(width: 1, color: Color(0xff6D6D6D)),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 1,
                    )),
                filled: true,
                fillColor: Color(0xffFEE9D1),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                  BorderSide(width: 1, color: Color(0xff6D6D6D)),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    controller: y,
                    cursorColor: Colors.black,
                    autocorrect: true,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: ' Expiry Data',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 20.sp),
                      hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff6D6D6D)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                      filled: true,
                      fillColor: Color(0xffFEE9D1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff6D6D6D)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.h,),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: z,
                    cursorColor: Colors.black,
                    autocorrect: true,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: 'CVC ',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 20.sp),
                      hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff6D6D6D)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                      filled: true,
                      fillColor: Color(0xffFEE9D1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xff6D6D6D)),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 3.h,),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: u,
              cursorColor: Colors.black,
              autocorrect: true,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                labelText: 'Name On Card ',
                labelStyle: TextStyle(color: Colors.black,fontSize: 20.sp),
                hintStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                  BorderSide(width: 1, color: Color(0xff6D6D6D)),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 1,
                    )),
                filled: true,
                fillColor: Color(0xffFEE9D1),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                  BorderSide(width: 1, color: Color(0xff6D6D6D)),
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            ElevatedButton(
              onPressed: () {
                String a=x.text;
                String b=y.text;
                String c=z.text;
                String d=u.text;
                if(a.isEmpty&&b.isEmpty&&c.isEmpty&&d.isEmpty){
                  Get.snackbar('خطا', 'تاكد من ادخال كل الحقول',snackPosition: SnackPosition.BOTTOM,backgroundColor: Color(0xffD59042),
                      colorText: Colors.white
                  );
                }else{
                  Get.toNamed(Routes.CHAT_ROOM);
                }
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:17.h,vertical: 0.3.h ),
                child: Text('تاكيد',style: TextStyle(fontSize: 22.sp,color: Color(0xff393939)),),
              ),
              style: ElevatedButton.styleFrom(
                primary:  Color(0xffDA9F5C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
                side: BorderSide(width: 1,color: Color(0xff6D6D6D) //
                ),
              ),

            ),
          ],),
        ),
      ),
    );
  }
}
