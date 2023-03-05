import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/model/GoalModel.dart';

import '../utils/utils.dart';

class goals_container extends StatelessWidget {
  GoalModel? goalModel;
  goals_container({Key? key, required this.goalModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 147.h,
        width: 149.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: Colors.blue,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23, top: 22),
              child: Row(
                children: [
                  Container(
                    // ellipse6z35 (43:2)
                    width: 20.w,
                    height: 20.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/page-1/images/ellipse-6-bg-wUP.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    goalModel!.userName!,
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xb21e1c1c),
                    ),
                  )
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 100.w,
              ),
              child: Text(
                // textDirection: ,
                textAlign: TextAlign.center,
                goalModel!.goalName!,
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: 121.w,
              height: 22.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                child: Text(
                  "Ask for Connection",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
