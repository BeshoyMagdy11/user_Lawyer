import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../C/Controller1.dart';
import 'create_login.dart';
import 'forget_password.dart';

class Lgin_IN extends StatelessWidget {
   Lgin_IN({Key? key}) : super(key: key);
   final formKey=GlobalKey<FormState>();
   TextEditingController emil_con=TextEditingController();
   TextEditingController password_con=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('تسجيل الدخول',style: TextStyle(fontSize: 28,color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.navigate_next),onPressed: (){
            Get.offAll(()=>Create_login_account());

          },color: Colors.black,iconSize: 50,),
        ],
      ),
      body: Form(
        key:formKey ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset('assets/images/g.png',height: 90,width: 400,),
              ),
              Text('محاميك',style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                child: TextFormField(
                  controller: emil_con,
    autocorrect: true,
    textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded,color: Colors.black,),
                    hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
    hintText:'البريد الالكتروني',
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
                  ),
                ),
              ),
              GetBuilder<Cont1>(
                init: (Cont1()),
                builder:(c)=>Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                child: TextFormField(
                  controller: password_con,
                  obscureText: c.hidePassword,
                  autocorrect: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIconColor: Colors.black,
                    hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                    hintText:' كلمة السر',
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
                    prefixIcon: IconButton(
                      icon:c.hidePassword
                          ? Icon(Icons.visibility_off,color: Colors.grey,)
                          : Icon(Icons.visibility,color: Colors.black,),
                      onPressed: (){
                        c.onchange();
                      },
                    ),
                  ),
                ),
              ), ),
              Padding(
                padding: const EdgeInsets.only(left:170,top: 10,bottom: 40,right: 10),
                child: TextButton(onPressed: (){
                  Get.to(ForgetPasword());
                }, child:Text('هل نسيت كلمة السر؟',style: TextStyle(fontSize: 20,color: Color(0xffD59042)),)),
              ),
              GetBuilder<Cont1>(
                init: Cont1(),
                builder: (c)=>
                 ElevatedButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      String emil=emil_con.text;
                      String password=password_con.text;
                      c.SignUpUser(email: emil, password: password);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 8,right: 80,left: 80,),
                    child: Text('تسجيل الدخول',style: TextStyle(fontSize: 22,color: Color(0xffFFFFFF)),),
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
    );
  }
}
