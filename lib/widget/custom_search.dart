import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Custom_search extends StatelessWidget {
  const Custom_search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 3.h),
      child: TextFormField(
        textAlign: TextAlign.end,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffEDEDED),
          prefixIcon: Icon(Icons.search,color: Color(0xffDA9F5C),),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10),),
            borderSide: BorderSide(width: 0.5.w,color: Color(0xffEDEDED)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0.0.w,color: Color(0xffEDEDED)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 0.5.w,color: Color(0xffEDEDED)),
          ),

        ),
      ),
    );
  }
}
