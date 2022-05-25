import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../M/modelFacebook.dart';
import '../V/Home_Screen.dart';
import '../V/MainScreen.dart';

class Cont1 extends GetxController {
  bool hidePassword = true;
  late String disblleusername;
  late String disblePhtouser;
  GoogleSignIn googleSignIn = GoogleSignIn();
  late FaceBookModel faceBookModel;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool checkbox = false;
 String selectedValue='';
var language = <String>['visa', 'mastercard'];

   vaildglobial (String val){
  if(val.isEmpty) {
    return 'error';
  }

  }

void onSelected(String value) {
    selectedValue = value;
    update();
  }

  void chanfecheckboox() {
    checkbox = !checkbox;
    update();
  }

  

  void onchange() {
    hidePassword = !hidePassword;
    update();
  }

  void GoogleSignUP() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      disblleusername = googleUser!.displayName!;
      disblePhtouser = googleUser.photoUrl!;
      update();
      Get.offAll(HomeScreen());
    } catch (error) {
      Get.snackbar('Errore', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    }
  }
/*void Facebook_sginup()async{
  try{final LoginResult loginResult = await FacebookAuth.instance.login();
    print("////////////");
  if (loginResult.status==LoginStatus.success){
    final data= await FacebookAuth.instance.getUserData();
    faceBookModel=FaceBookModel.fromJson(data);
    print(faceBookModel.name);
    print(faceBookModel.emil);
    update();
    Get.off(MainSCreen());
  }}catch(error){
    Get.snackbar('Errore', error.toString(),snackPosition: SnackPosition.BOTTOM,backgroundColor: Color(0xffD59042),colorText: Colors.white);

  }
}

 */

  void SignInwithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        disblleusername = name;
        auth.currentUser!.updateDisplayName(name);
      });
      update();
      Get.offAll(HomeScreen());

      // ignore: nullable_type_in_catch_clause
    } on FirebaseAuthException catch (Errore) {
      String title = Errore.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String massage = '';
      if (Errore.code == 'weak-password') {
        massage = "The password provided is too weak";
      } else if (Errore.code == 'email-already-in-use') {
        massage = "The account already exists for that email";
      } else {
        massage = Errore.message.toString();
      }
      Get.snackbar(title, massage,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    } catch (error) {
      Get.snackbar('Errore', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    }
  }

  void SignUpUser({
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => disblleusername = auth.currentUser!.displayName!);
      update();
      Get.offAll(HomeScreen());
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String massage = '';
      if (e.code == 'user-not-found') {
        massage =
            ' Account does not exists for that $email.. Create your account by signing up..';
        print(e);
      } else if (e.code == 'wrong-password') {
        massage = ' Invalid Password... PLease try again! ';
        print(e);
      } else {
        massage = e.message.toString();
      }
      Get.snackbar(title, massage,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    } catch (error) {
      Get.snackbar('Errore', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
      print(error);
    }
  }

  void ResetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      update();
      Get.back();
      ;
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String massage = '';
      if (e.code == 'user-not-found') {
        massage =
            ' Account does not exists for that $email.. Create your account by signing up..';
      } else {
        massage = e.message.toString();
      }
      Get.snackbar(title, massage,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    } catch (error) {
      Get.snackbar('Errore', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(0xffD59042),
          colorText: Colors.white);
    }
  }
}
