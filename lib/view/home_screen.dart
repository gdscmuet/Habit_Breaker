import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../components/boxShadow.dart';
import '../utils/utils.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 46.h,
                ),
                Container(
                  // autogroup8tiy2yR (9NtseJZkL7HzCbpGaT8TiY)
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25.w,
                      ),
                      Container(
                        // hellofarheenYB5 (5:2)
                        constraints: BoxConstraints(
                          maxWidth: 100.w,
                        ),
                        child: Text(
                          'Hello Farheen!',
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Color(0x7f000000),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 124.w,
                      ),
                      Container(
                          // ellipse6z35 (43:2)
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/page-1/images/ellipse-6-bg-wUP.png'),
                              ))
                          // child: Image.asset(
                          //   'assets/page-1/images/ellipse-6-bg-wUP.png',
                          // ),
                          ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                boxShadow(),
                SizedBox(
                  height: 32.h,
                ),
                Container(
                  // autogroupzydwi11 (9Ntt9xP1MUK1RaLRE9zYdW)
                  width: double.infinity,
                  height: 226.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      // BoxShadow(
                      //     color: Color.fromRGBO(152, 144, 144, 0.5),
                      //     offset: Offset(2, 2),
                      //     spreadRadius: -4,
                      //     blurRadius: 4,
                      //     inset: true),
                      // BoxShadow(
                      //     color: Color.fromRGBO(152, 144, 144, 0.5),
                      //     offset: Offset(-2, -4),
                      //     spreadRadius: -2,
                      //     blurRadius: 4,
                      //     inset: true),
                      // BoxShadow(
                      //     color: Color.fromRGBO(152, 144, 144, 0.25),
                      //     offset: Offset(-1, 1),
                      //     spreadRadius: 2,
                      //     blurRadius: 1,
                      //     inset: true),
                      // BoxShadow(
                      //     color: Color.fromRGBO(152, 144, 144,0.25),
                      //     offset: Offset(1*fem, 2*fem),
                      //     spreadRadius: 0.1*fem,
                      //     blurRadius: 0.2*fem,
                      //     inset: true
                      // ),
                    ],
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20.w, 0, 0.w, 20.h),
                        // autogroupv5g4mzs (9NttbXUjUMBaaKY5eCV5G4)
                        width: 190.w,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup6fsytZh (9NtvZPNgPeBkegjad16fSY)

                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 45.h,
                                  ),
                                  Container(
                                    // autogrouphgwk4sV (9Nttubnx3vgiKufNyGhgWk)
                                    width: 73.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xa5e1c3e7),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Workout',
                                        style: SafeGoogleFont(
                                          'Sansita',
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w700,
                                          // height: 1.2 * ffem / fem,
                                          color: Color(0xff9830aa),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Welcome Back!',
                                        style: SafeGoogleFont(
                                          'Sansita',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          // height: 1.2 * ffem / fem,
                                          color: Color(0x7f000000),
                                        ),
                                      ),
                                      Text(
                                        'Today’s Challenge',
                                        style: SafeGoogleFont(
                                          'Sansita',
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                          // height: 1.2 * ffem / fem,
                                          color: Color(0xad000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              // autogroup1vfzb8f (9NtuAG3Bzgxrka2oT31vfz)
                              height: 50.h,
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(0.5),
                                    child: Container(
                                      // autogroup9cx2KaT (9Ntugzeyi1ykguqh6p9CX2)
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xff7fcfcf),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          index.toString(),
                                          style: SafeGoogleFont(
                                            'Sansita',
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w700,
                                            // height: 1.2 * ffem / fem,
                                            color: Color(0xfffefefe),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 26.h,
                        ),
                        // autogroupuzdeAFd (9Ntvzhypf9DH2C6mGQuzdE)
                        width: 135.w,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                                // rectangle95Voh (11:12)
                                left: -7.w,
                                top: 0.h,
                                child: Image.asset(
                                  "assets/page-1/images/capsule_large.png",
                                  height: 177.h,
                                  width: 136.w,
                                )),
                            Positioned(
                              // rectangle104oJb (13:44)
                              left: 40.w,
                              top: 90.h,
                              child: Image.asset(
                                  "assets/page-1/images/capsule_small.png"),
                            ),
                            // 'assets/page-1/casual-female-welcoming-out-pose-4851367-4046990-1.png',
                            // Positioned(
                            //   // casualfemalewelcomingoutpose48 (11:13)
                            //   left: 4.7670898438 * fem,
                            //   top: 0 * fem,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 136 * fem,
                            //       height: 177 * fem,
                            //       child: Image.asset(
                            //         'assets/page-1/casual-female-welcoming-out-pose-4851367-4046990-1.png',
                            //         fit: BoxFit.cover,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              // casualfemalewelcomingoutpose48 (11:13)
                              left: 0.7670898438,
                              top: 0,
                              child: Align(
                                child: SizedBox(
                                  width: 136.w,
                                  height: 177.h,
                                  child: Image.asset(
                                    'assets/page-1/images/casual-female-welcoming-out-pose-4851367-4046990-1.png',
                                    fit: BoxFit.cover,
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
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 65.h,
                  width: 357.w,
                  decoration: BoxDecoration(
                    color: Color(0xff7FCFCF),
                    borderRadius: BorderRadius.circular(34.r),
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add a New Goal",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Color(0xfffefefe),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(Icons.add,
                              size: 15.sp, color: Color(0xff7FCFCF)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  // discoversbH (5:6)
                  child: Text(
                    'Discover',
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      // height: 1.2 * ffem / fem,
                      color: Color(0x7f000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // autogroupnoyzBby (9Ntwcmn4XqbrvxQY11noyz)
                  width: double.infinity,
                  height: 95.h,
                  child: Row(
                    children: [
                      Container(
                        // autogroupshegXfq (9NtwpMH6yd7kQLoPKeSHeG)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffe1c3e6),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 94.w,
                              height: 77.h,
                              child: Image.asset(
                                'assets/page-1/images/dumbbellspreview-removebg-preview-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 38.w,
                              height: 12.h,
                              child: Text(
                                'Workout',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xff9830aa),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        // autogroupbqfn3Go (9Ntwtr9cJQLcSdr1B2bqfn)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc37f),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 76.w,
                              height: 74.h,
                              child: Image.asset(
                                'assets/page-1/images/invest-for-education-5768769-4833566-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 43.w,
                              height: 12.h,
                              child: Text(
                                'Education',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xffb17809),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        // autogroupnz2tj39 (9Ntwz6VsBK6cpeQ4LJnz2t)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff3adad),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 88.w,
                              height: 79.h,
                              child: Image.asset(
                                'assets/page-1/images/health-care-6869166-5628503-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 53.w,
                              height: 12.h,
                              child: Text(
                                'Good Health',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xffb81616),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
