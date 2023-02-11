import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes/RoutesName.dart';
import '../utils/utils.dart';

class info_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double baseWidth = 390;
    // double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // autogroup4n5vEdZ (9Nu4BLLx6UXrqGPiz54N5v)
              padding: EdgeInsets.only(
                  left: 27.w, top: 21.h, right: 16.w),
              width: double.infinity,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // fillthefollowinginformationAGK (23:79)
                      margin: EdgeInsets.fromLTRB(0, 0, 96.w, 50.h),
                      constraints: BoxConstraints(
                        maxWidth: 212.w,
                      ),
                      child: Text(
                        'Fill the following information',
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xb21e1c1c),
                        ),
                      ),
                    ),
                    Container(
                      // autogroup4sw2SzX (9Nu3Prej9vd8srGavz4Sw2)
                      margin: EdgeInsets.fromLTRB(2.w, 0, 16.w, 42.h),
                      width: double.infinity,
                      height: 164.h,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupgmccFwy (9Nu3XrRQPygfqV1uZDgmCc)
                            margin: EdgeInsets.fromLTRB(0, 0, 17.w, 0),
                            width: 141.w,
                            height: 164.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffaf1179)),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20.h,),
                                Text(
                                  'Girl',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffaf1179),
                                  ),
                                ),
                                SizedBox(
                                  width: 139.w,
                                  height: 124.h,
                                  child: Image.asset(
                                    'assets/page-1/images/florist-5691544-4741085-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup5upcxV1 (9Nu3cgcgrbNGFRqq6n5upc)
                            // autogroupgmccFwy (9Nu3XrRQPygfqV1uZDgmCc)
                            // margin: EdgeInsets.fromLTRB(0, 0, 12.w, 0),
                            width: 141.w,
                            height: 164.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff4411af)),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 18.h,),
                                Text(
                                  'Boy',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff4411af),
                                  ),
                                ),
                                SizedBox(
                                  width: 135.w,
                                  child: Image.asset(
                                    'assets/page-1/images/handsome-boy-4929611-4118354-1-Q6w.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // SizedBox(
                                //   width: 141.w,
                                //   height: 164.h,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius:
                                //           BorderRadius.circular(30.r),
                                //       border: Border.all(
                                //           color: Color(0x994411af)),
                                //     ),
                                //   ),
                                // ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupzqwu1Lo (9Nu3nbVqdCaVrZL9xXZQWU)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5.h),
                      height: 32.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff939191)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: TextField(),
                    ),
                    Container(
                      // autogroupwxh6eef (9Nu3sWXKNGsmrv6uRdWxH6)
                      margin: EdgeInsets.fromLTRB(0 , 0 , 0 , 5.h),
                      // padding: EdgeInsets.fromLTRB(24.w, 9.h, 24.w, 11.h),
                      width: double.infinity,
                      height: 32.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff939191)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: TextField(),
                    ),
                    Container(
                      // autogroupmhkuHxX (9Nu3xFtQYRwggSz13eMhkU)
                      height: 32.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff939191)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: TextField(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    // vector24ro (23:102)
                    left: -62.w,
                    child: Image.asset(
                      'assets/page-1/images/vector-2-FW3.png',
                      width: 276.w,
                      height: 539.h,
                    ),
                  ),
                  Positioned(
                    // ellipse5BRd (23:101)
                    left: 107.w,
                    top: 50.h,
                    child: Image.asset(
                      'assets/page-1/images/ellipse-5-Yd9.png',
                      width: 467.w,
                      height: 524.h,
                    ),
                  ),
                  Positioned(
                    // rectangle105VSK (23:98)
                    left: 40.w,
                    top: 100.h,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.homeScreen);
                      },
                      child: Container(
                          width: 274.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xfffbb346),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: SafeGoogleFont(
                                'Sansita',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
