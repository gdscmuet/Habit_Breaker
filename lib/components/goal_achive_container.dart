import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/model/GoalModel.dart';

import '../utils/utils.dart';

class goal_achive_container extends StatelessWidget {
  GoalModel? goalModel;
  goal_achive_container({Key? key, this.goalModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
      height: 94.h,
      width: 327.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.redAccent),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      backgroundImage: AssetImage(
                          'assets/page-1/images/ellipse-6-bg-wUP.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    goalModel!.userName!,
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xb21e1c1c),
                    ),
                  ),
                ],
              ),
              Text(
                goalModel!.deadline!,
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    goalModel!.goalName!,
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Ongoing",
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Container(
                height: 22.h,
                width: 121.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "Achieve your goal",
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
