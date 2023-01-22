import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/components/achived_container.dart';
import 'package:habit_breaker/components/goal_achive_container.dart';

import '../utils/utils.dart';

class search_for_goals_2 extends StatelessWidget {
  const search_for_goals_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey,Farheen!",
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xb21e1c1c),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Welcome Back!",
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xb21e1c1c),
                      ),
                    ),
                  ],
                ),
                Container(
                  // ellipse6z35 (43:2)
                  width: 60.w,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/page-1/images/ellipse-6-bg-wUP.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "Your Goals",
              style: SafeGoogleFont(
                'Sansita',
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xb21e1c1c),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            goal_achive_container(),
            SizedBox(
              height: 10.h,
            ),
            goal_achive_container(),
            SizedBox(
              height: 10.h,
            ),
            goal_achive_container(),
            SizedBox(
              height: 17.h,
            ),
            Container(
              width: 70.w,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        // margin: const EdgeInsets.only( right: 1.0),
                        child: const Divider(
                      color: Color(0xffC0BEBE),
                      thickness: 1,
                    )),
                  ),
                  Text(
                    "Acheived",
                    style: SafeGoogleFont(
                      'poppins',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Expanded(
                    child: Container(
                        // margin: const EdgeInsets.only(left: 5.0, right: 1.0),
                        child: const Divider(
                      color: Color(0xffC0BEBE),
                      thickness: 1,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h,),
            achived_container(),
          ],
        ),
      ),
    ));
  }
}
