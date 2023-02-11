import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/utils.dart';

class achived_container extends StatelessWidget {
  const achived_container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
      width: 327.w,
      height: 94.h,
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                height: 20.h,
                width: 20.w,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/page-1/images/ellipse-6-bg-wUP.png'),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Created by XYZ",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "40 Days Exercise",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 32.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "Achieved",
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
