import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class info_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              // autogroup4n5vEdZ (9Nu4BLLx6UXrqGPiz54N5v)
              padding:
                  EdgeInsets.fromLTRB(27 * fem, 51 * fem, 23 * fem, 5 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fillthefollowinginformationAGK (23:79)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 96 * fem, 88 * fem),
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
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 16 * fem, 42 * fem),
                    width: double.infinity,
                    height: 164 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupgmccFwy (9Nu3XrRQPygfqV1uZDgmCc)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          width: 141.w,
                          height: 164.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffaf1179)),
                            borderRadius: BorderRadius.circular(30 * fem),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // florist5691544474108519XZ (23:89)
                                left: 2 * fem,
                                top: 40 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 139 * fem,
                                    height: 124 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/florist-5691544-4741085-1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // girlejD (23:92)
                                left: 60 * fem,
                                top: 23 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 26 * fem,
                                    height: 20 * fem,
                                    child: Text(
                                      'Girl',
                                      style: SafeGoogleFont(
                                        'Sansita',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        color: Color(0xffaf1179),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup5upcxV1 (9Nu3cgcgrbNGFRqq6n5upc)
                          width: 142.w,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // handsomeboy492961141183541QM1 (23:91)
                                left: 7 * fem,
                                top: 49 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 135 * fem,
                                    height: 115 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/handsome-boy-4929611-4118354-1-Q6w.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle109VUw (23:94)

                                child: Align(
                                  child: SizedBox(
                                    width: 141.w,
                                    height: 164.h,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30 * fem),
                                        border: Border.all(
                                            color: Color(0x994411af)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // boyWQ3 (23:93)
                                left: 55 * fem,
                                top: 23 * fem,
                                child: SizedBox(
                                  width: 26.w,
                                  height: 20.h,
                                  child: Text(
                                    'Boy',
                                    style: SafeGoogleFont(
                                      'Sansita',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2 * ffem / fem,
                                      color: Color(0xff4411af),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupzqwu1Lo (9Nu3nbVqdCaVrZL9xXZQWU)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 10 * fem, 24 * fem, 10 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff939191)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      'Nickname',
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8c8989),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupwxh6eef (9Nu3sWXKNGsmrv6uRdWxH6)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 9 * fem, 24 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff939191)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      'Age',
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8c8989),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupmhkuHxX (9Nu3xFtQYRwggSz13eMhkU)
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 8 * fem, 24 * fem, 12 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff939191)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      'Contact Number',
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8c8989),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupxfmzYNf (9Nu42kkusDAYik2cu2XFmz)
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    // vector24ro (23:102)
                    left: -90.w,
                    top: 420.h,
                    child: Image.asset(
                      'assets/page-1/images/vector-2-FW3.png',
                      width: 276.w,
                      height: 539.h,
                    ),
                  ),
                  Positioned(
                    // ellipse5BRd (23:101)
                    left: 107.w,
                    top: 450.h,
                    child: Image.asset(
                      'assets/page-1/images/ellipse-5-Yd9.png',
                      width: 467.w,
                      height: 524.h,
                    ),
                  ),
                  Positioned(
                    // rectangle105VSK (23:98)
                    left: 40.w,
                    top: 550.h,
                    child: InkWell(
                      child: Container(
                          width: 274.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
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
