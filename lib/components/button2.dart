import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button2 extends StatelessWidget {
  const button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
        }, // Handle your callback
        child: Container(
          width: 274.w,
          height: 46.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Color(0xffC0BEBE)),
          ),
          child: Center(
            child: Text("Sign Up",style:
            TextStyle(color: Color(0xffC0BEBE), fontFamily: "Sansita", fontSize: 16.sp),),
          ),
        )
    );
  }
}
