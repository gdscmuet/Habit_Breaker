import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/resources/firebase_respository.dart';
import '../model/ConnectionRequestModel.dart';
import '../utils/utils.dart';

class ConnectedUsersWidget extends StatelessWidget {
  final ConnectionRequestModel? requestModel;
  ConnectedUsersWidget({Key? key, this.requestModel}) : super(key: key);

  final FirebaseRepository _firebaseRepository = FirebaseRepository();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    height: 20.h,
                    width: 20.w,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/page-1/images/ellipse-6-bg-wUP.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    requestModel!.senderName!,
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xb21e1c1c),
                    ),
                  ),
                ],
              ),
              Text(
                "Deadline ${requestModel!.deadline.toString()}",
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
                    requestModel!.goalName!,
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
              Padding(
                padding: const EdgeInsets.only(left: 110.0),
                child: InkWell(
                  child: Container(
                    height: 25.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "Chat",
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {},
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
