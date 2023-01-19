import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -50,
              top: 330,
              child: Image.asset(
                "assets/page-1/images/vector-2-2KD.png",
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: -45,
              child: Image.asset(
                "assets/page-1/images/Vector-1.png",
              ),
            ),
            Positioned(
              top: 500,
              left: 147,
              child: Image.asset(
                "assets/page-1/images/ellipse-5-RG7.png",
                height: 499.h,
                width: 444.w,
              ),
            ),
            Positioned(
              left: 42,
              top: 80,
              child: Text(
                "Welcome!",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w700,
                  // height: 1.2 * ffem / fem,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 130,
              child: Container(
                constraints: BoxConstraints(maxWidth: 260.w),
                child: Text(
                  "we are really happy to see you here.",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 48,
                top: 580,
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(left: 45, right: 45),
                    width: 253,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xfffCB346),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Let's go!",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/page-1/images/arrow-right-1-1o1.png",
                          width: 23,
                          height: 23,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class onboarding_screen_1 extends StatelessWidget {
  const onboarding_screen_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -50,
              top: 430,
              child: Image.asset(
                "assets/page-1/images/vector-2-2KD.png",
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: -250,
              left: -120,
              child: Image.asset(
                "assets/page-1/images/ellipse-4-QSF.png",
                height: 500,
              ),
            ),
            Positioned(
              top: 500,
              left: 147,
              child: Image.asset(
                "assets/page-1/images/ellipse-5-RG7.png",
                height: 499.h,
                width: 444.w,
              ),
            ),
            Positioned(
              top: 243,
              left: 50,
              child: Image.asset(
                "assets/page-1/images/two-teenager-thumbs-up-gesture-4551904-3784288-1.png",
                height: 270.h,
                width: 270.w,
              ),
            ),
            Positioned(
              left: 42,
              top: 80,
              child: Text(
                "Choose your Partner",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  // height: 1.2 * ffem / fem,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 130,
              child: Container(
                constraints: BoxConstraints(maxWidth: 270.w),
                child: Text(
                  "Choose your compatible partner and achieve your goals together and shine.",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 16.sp,
                    // height: 1.2 * ffem / fem,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 48,
                top: 580,
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(left: 45, right: 45),
                    width: 253,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xfffCB346),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Let's go!",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/page-1/images/arrow-right-1-1o1.png",
                          width: 23,
                          height: 23,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class onboarding_screen_2 extends StatelessWidget {
  const onboarding_screen_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -50,
              top: 430,
              child: Image.asset(
                "assets/page-1/images/vector-2-2KD.png",
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: -250,
              left: -120,
              child: Image.asset(
                "assets/page-1/images/ellipse-4-QSF.png",
                height: 500,
              ),
            ),
            Positioned(
              top: 500,
              left: 147,
              child: Image.asset(
                "assets/page-1/images/ellipse-5-RG7.png",
                height: 499.h,
                width: 444.w,
              ),
            ),
            Positioned(
              top: 243,
              left: 50,
              child: Image.asset(
                "assets/page-1/images/download-removebg-preview-1.png",
                height: 300.h,
                width: 300.w,
              ),
            ),
            Positioned(
              left: 42,
              top: 80,
              child: Text(
                "Set Your Goals",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  // height: 1.2 * ffem / fem,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 130,
              child: Container(
                constraints: BoxConstraints(maxWidth: 270.w),
                child: Text(
                  "Set the goal with your partner that you both want accomplish",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 16.sp,
                    // height: 1.2 * ffem / fem,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 48,
                top: 580,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 45, right: 45),
                    width: 253,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color(0xfffCB346),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Let's go!",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/page-1/images/arrow-right-1-1o1.png",
                          width: 23,
                          height: 23,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class onboarding_screen_3 extends StatelessWidget {
  const onboarding_screen_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -50,
              top: 430,
              child: Image.asset(
                "assets/page-1/images/vector-2-2KD.png",
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: -250,
              left: -120,
              child: Image.asset(
                "assets/page-1/images/ellipse-4-QSF.png",
                height: 500,
              ),
            ),
            Positioned(
              top: 500,
              left: 147,
              child: Image.asset(
                "assets/page-1/images/ellipse-5-RG7.png",
                height: 499.h,
                width: 444.w,
              ),
            ),
            Positioned(
              top: 223,
              left: 30,
              child: Image.asset(
                "assets/page-1/images/mission-milestone-flag-single-isolated-icon-vector-36317296-removebg-preview-1.png",
                height: 300.h,
                width: 300.w,
              ),
            ),
            Positioned(
              left: 42,
              top: 80,
              child: Text(
                "Acieve Milestones",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  // height: 1.2 * ffem / fem,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 130,
              child: Container(
                constraints: BoxConstraints(maxWidth: 270.w),
                child: Text(
                  "Set the goal with your partner that you both want accomplish",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 16.sp,
                    // height: 1.2 * ffem / fem,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 48,
                top: 580,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 45, right: 45),
                    width: 253,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color(0xfffCB346),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Let's go!",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/page-1/images/arrow-right-1-1o1.png",
                          width: 23,
                          height: 23,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
