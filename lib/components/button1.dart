import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/view/login_screen.dart';

class button1 extends StatefulWidget {
  const button1({Key? key}) : super(key: key);

  @override
  State<button1> createState() => _button1State();
}

class _button1State extends State<button1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login_screen())
        );
      }, // Handle your callback
      child: Container(
        width: 274.w,
        height: 46.h,
        decoration: BoxDecoration(
          color: Color(0xffFCB346),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            "Login",
            style:
            TextStyle(color: Colors.white, fontFamily: "Sansita", fontSize: 16.sp),
          ),
        ),
      )
    );
  }
}
