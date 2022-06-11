import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/auth_controller.dart';
import '../my_string.dart';
import 'create_login.dart';
import 'login_in.dart';

class ForgetPasword extends StatelessWidget {
   ForgetPasword({Key? key}) : super(key: key);
  final fromKey=GlobalKey<FormState>();
  TextEditingController emile=TextEditingController();


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('تعيين  كلمة سر جديدة',style: TextStyle(fontSize: 23,color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.navigate_next),onPressed: (){
            Get.offAll(()=>Lgin_IN());

          },color: Colors.black,iconSize: 45,),
        ],
      ),
      body: Form(
        key:fromKey ,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.close_rounded),
                    color: Colors.black,
                    onPressed: (){
                      Get.back();
                    },
                  ),
                ),
                Text(
                  'إذا كنت ترغب في استعادة حسابك ، فيرجى تقديم معرف البريد الإلكتروني الخاص بك أدناه...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:  Colors.black,
                  ),
                ),
                Image.asset('assets/images/6321602.jpg'),
                GetBuilder<AuthController>(
                  init: (AuthController()),
                  builder:(c)=>Padding(
                    padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      controller: emile,
                      validator: (value2){
                        (value2.toString().length<=2||!RegExp(validationEmail).hasMatch(value2!))?'Enter vaild name':null;

                      },
                      obscureText: c.hidePassword,
                      autocorrect: true,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        prefixIconColor: Colors.black,
                        hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        hintText:' البريد الالكتروني',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1,color: Color(0xff6D6D6D)),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            borderSide: BorderSide(width: 1,)
                        ),
                        filled: true,
                        fillColor: Color(0xffFEE9D1),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1,color: Color(0xff6D6D6D)),
                        ),
                        prefixIcon: Icon(Icons.email_rounded,color: Colors.black,),

                      ),
                    ), ),),
                const SizedBox(height: 40,),
                GetBuilder<AuthController>(
                  init: AuthController(),
                  builder: (c)=>
                   ElevatedButton(
                    onPressed: () {
                     if(fromKey.currentState!.validate()){
                       c.ResetPassword(email: emile.text);
                     }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:7,bottom: 7,right: 105,left: 105),
                      child: Text('ارسال',style: TextStyle(fontSize: 22,color: Color(0xffFFFFFF)),),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffD59042),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      side: BorderSide(width: 1,color: Color(0xff6D6D6D) //
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
