import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/routes/RoutesName.dart';

class button1 extends StatelessWidget {
  const button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.infoScreen);
      },
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
          style: TextStyle(
              color: Colors.white, fontFamily: "Sansita", fontSize: 16.sp),
        )),
      ),
    );
  }
}
