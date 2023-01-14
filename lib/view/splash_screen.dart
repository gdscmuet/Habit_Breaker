import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // splashscreen1z83 (13:45)
          child: Stack(
            children: [
              Container(
                // autogroup3xfruko (9NtxzjUpxNDCXHskFN3xfr)
                margin:
                    EdgeInsets.fromLTRB(0 , 0 , 0 , 43),
                padding: EdgeInsets.only(left: 42.w, top: 80.h),
                width: 612.w,
                height: 340.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/page-1/images/vector-1.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // welcomePAB (13:58)
                      margin: EdgeInsets.fromLTRB(
                          0 , 0 , 0 , 1 ),
                      child: Text(
                        'Welcome!',
                        style: TextStyle(
                          fontFamily: 'Sansita',
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // wearereallyhappytoseeyouheretc (13:59)
                      constraints: BoxConstraints(
                        maxWidth: 260.w,
                      ),
                      child: Text(
                        'we are really happy to see you here.',
                        style: TextStyle(
                          fontFamily: 'Sansita',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    // ellipse5LUj (25:89)
                    left: 65.5.w,
                    top: 610.h,
                    child: Align(
                      child: Image.asset(
                        'assets/page-1/images/ellipse-5.png',
                        width: 444.w,
                        height: 499.h,
                      ),
                    ),
                  ),
                  Positioned(
                    // vector2FLo (13:57)
                    bottom: 200.h,
                    right: 160.w,
                    child: Align(
                      child: Image.asset(
                        'assets/page-1/images/vector-2.png',
                        width: 200.w,
                        height: 500.h,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
