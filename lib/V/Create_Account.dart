import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../C/Controller1.dart';
import '../my_string.dart';
import 'create_login.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);
  final TextEditingController name_con = TextEditingController();
  final TextEditingController emai_con = TextEditingController();
  final TextEditingController password_con = TextEditingController();
  final fornKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'انشاء حساب جديد',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Get.offAll(() => Create_login_account());
            },
            color: Colors.black,
            iconSize: 50,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: fornKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/g.png',
                  height: 90,
                  width: 400,
                ),
              ),
              Text(
                'محاميك',
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextFormField(
                  controller: name_con,
                  cursorColor: Colors.black,
                  validator: (value) {
                    (value.toString().length <= 2 ||
                            !RegExp(validationName).hasMatch(value!))
                        ? 'Enter vaild name'
                        : null;
                  },
                  autocorrect: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.person),
                    hintStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    hintText: 'الاسم',
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
              GetBuilder<Cont1>(
                init: (Cont1()),
                builder: (con) => Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: emai_con,
                    validator: (value2) {
                      (value2.toString().length <= 2 ||
                              !RegExp(validationEmail).hasMatch(value2!))
                          ? 'Enter vaild name'
                          : null;
                    },
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.black,
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      hintText: ' البريد الالكتروني',
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
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GetBuilder<Cont1>(
                init: (Cont1()),
                builder: (con) => Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: password_con,
                    validator: (value3) {
                      (value3.toString().length < 6)
                          ? 'Password should be longer or equle 6charctaes'
                          : null;
                    },
                    obscureText: con.hidePassword,
                    autocorrect: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.black,
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      hintText: ' كلمة السر',
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
                      prefixIcon: IconButton(
                        icon: con.hidePassword
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                        onPressed: () {
                          con.onchange();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              GetBuilder<Cont1>(
                init: Cont1(),
                builder: (c) => Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'بتسجيلك انت توافق علي ',
                              style: TextStyle(fontSize: 16)),
                          TextSpan(
                            text: 'شروط وحكام محاميك',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffD59042),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Checkbox(
                      value: c.checkbox,
                      onChanged: (v) => c.chanfecheckboox(),
                      activeColor: Color(0xffFEE9D1),
                      checkColor: Color(0xffD59042),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(6))), // Rounded Checkbox
                    ),
                  ],
                ),
              ),
              GetBuilder<Cont1>(
                init: Cont1(),
                builder: (connn) => ElevatedButton(
                  onPressed: () {
                    if (connn.checkbox == false) {
                      Get.snackbar('خانة الاختيار',
                          'نرجو منك الموافقة علي الشروط والاحكام',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Color(0xffD59042),
                          colorText: Colors.white);
                    } else if (fornKey.currentState!.validate()) {
                      String name = name_con.text.trim();
                      String email = emai_con.text.trim();
                      String password = password_con.text;
                      connn.SignInwithEmail(
                          name: name, email: email, password: password);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      right: 80,
                      left: 80,
                    ),
                    child: Text(
                      'انشاء حساب',
                      style: TextStyle(fontSize: 22, color: Color(0xffFFFFFF)),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffD59042),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    side: BorderSide(width: 1, color: Color(0xff6D6D6D) //
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
/*115fe59ba3df@moakt.co*/