import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../model/GoalModel.dart';
import '../utils/utils.dart';

class today_challenge_container extends StatelessWidget {
  final GoalModel model;
  const today_challenge_container({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // autogroupzydwi11 (9Ntt9xP1MUK1RaLRE9zYdW)
      width: double.infinity,
      height: 226.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(152, 144, 144, 0.5),
              offset: Offset(2, 2),
              spreadRadius: -4,
              blurRadius: 4,
              inset: true),
          BoxShadow(
              color: Color.fromRGBO(152, 144, 144, 0.5),
              offset: Offset(-2, -4),
              spreadRadius: -2,
              blurRadius: 4,
              inset: true),
          BoxShadow(
              color: Color.fromRGBO(152, 144, 144, 0.25),
              offset: Offset(-1, 1),
              spreadRadius: 2,
              blurRadius: 1,
              inset: true),
          BoxShadow(
              color: Color.fromRGBO(152, 144, 144, 0.25),
              offset: Offset(1, 2),
              spreadRadius: 0.1,
              blurRadius: 0.2,
              inset: true),
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
                        width: 80.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          color: Color(0xa5e1c3e7),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            "Today's Challange",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.category!,
                            style: SafeGoogleFont(
                              'Sansita',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              // height: 1.2 * ffem / fem,
                              color: Color(0x7f000000),
                            ),
                          ),
                          Text(
                            model.goalName!,
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
                    itemCount: 4,
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
                              (index + 1).toString(),
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
                  child: Image.asset("assets/page-1/images/capsule_small.png"),
                ),
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
    );
  }
}
