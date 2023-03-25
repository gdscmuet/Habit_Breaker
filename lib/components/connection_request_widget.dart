import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/resources/firebase_respository.dart';

import '../model/ConnectionRequestModel.dart';
import '../model/UserModel.dart';
import '../utils/utils.dart';

class ConnectionRequestWidget extends StatefulWidget {
  final ConnectionRequestModel? requestModel;
  ConnectionRequestWidget({
    Key? key,
    this.requestModel,
  }) : super(key: key);
  bool? isConnected = false;
  String text = "Accepted";
  @override
  State<ConnectionRequestWidget> createState() =>
      _ConnectionRequestWidgetState();
}

class _ConnectionRequestWidgetState extends State<ConnectionRequestWidget> {
  final FirebaseRepository _firebaseRepository = FirebaseRepository();

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
                    widget.requestModel!.senderName!,
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
                widget.requestModel!.sentDate.toString(),
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
                    widget.requestModel!.goalName!,
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
              widget.isConnected!
                  ? Container(
                      height: 25.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          widget.text,
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 25.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.black),
                            child: Center(
                              child: Text(
                                "Accpet",
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () async {
                            setState(() {
                              widget.isConnected = true;
                            });
                            await _firebaseRepository.acceptConnectionRequest(
                                requestModel: widget.requestModel!);
                            utils.toastMessage("Request Accepted");
                          },
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        InkWell(
                          child: Container(
                            height: 25.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.black),
                            child: Center(
                              child: Text(
                                "Decline",
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          onTap: () async {
                            setState(() {
                              widget.isConnected = true;
                              widget.text = "Declined";
                            });
                            await _firebaseRepository.declineConnectionRequest(
                                requestModel: widget.requestModel!);

                            utils.toastMessage("Request Declined");
                          },
                        ),
                      ],
                    )
            ],
          )
        ],
      ),
    );
  }
}
