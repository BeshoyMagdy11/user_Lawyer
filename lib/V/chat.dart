import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:PopupMenuButton(
          icon: Image.asset('assets/images/dots.png',height: 4.h,),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
            color: Color(0xffDA9F5C),
            itemBuilder: (context)=>[
              PopupMenuItem(child: Text('jjjj'),value: 1,)]),
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
          Container(
              width: 5.h,
              child: CircleAvatar(backgroundImage:AssetImage('assets/images/pexels-cottonbro-4098274.png',) ,)),
          IconButton(icon: Icon(Icons.navigate_next_sharp),onPressed: (){
            Get.back();
          },color: Colors.black,iconSize: 50,),
        ],
      ),
    );
  }
}
