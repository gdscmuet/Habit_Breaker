import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/button_tile.dart';
import '../utils/utils.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: -140,
            top: -334,
            child: Image.asset(
              "assets/page-1/images/ellipse-5-9Xq.png",
              height: 499,
              width: 444,
            ),
          ),
          Positioned(
            left: 23,
            top: 79,
            child: Container(
              width: 118.w,
              height: 118.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 7, color: Colors.white)),
              child: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/page-1/images/ellipse-6-bg-wUP.png',
                  ),
                ),
              ),
              // child: Image.asset(
              //   'assets/page-1/images/ellipse-6-bg-wUP.png',
              // )
            ),
          ),
          Positioned(
              left: 147,
              top: 97,
              child: Container(
                height: 83.h,
                width: 204.w,
                decoration: BoxDecoration(
                  color: Color(0xffFCB346),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kinza Aslam",
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          // height: 1.2 * ffem / fem,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Kinzaaslam65@gmail.com",
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          // height: 1.2 * ffem / fem,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            left: -110,
            top: 600,
            child: Image.asset(
              "assets/page-1/images/ellipse-4-4Km.png",
              height: 499,
              width: 573,
            ),
          ),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: 220,
                ),
                button_tile(
                  image: "assets/page-1/images/telephone-1.png",
                  text: '+92 000 222 333',
                  ontap: () {},
                ),
                button_tile(
                  image: "assets/page-1/images/person-1.png",
                  text: "Female",
                  ontap: () {},
                ),
                button_tile(
                  image: "assets/page-1/images/person-heart-1.png",
                  text: "Female",
                  ontap: () {},
                ),
                button_tile(
                  image: "assets/page-1/images/bookmark-1.png",
                  text: "Female",
                  ontap: () {},
                ),
                button_tile(
                  image: "assets/page-1/images/pin-angle-fill-1.png",
                  text: "Female",
                  ontap: () {},
                ),
                button_tile(
                  image: "assets/page-1/images/box-arrow-left-1.png",
                  text: "Female",
                  ontap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
