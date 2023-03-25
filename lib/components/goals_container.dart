import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/model/GoalModel.dart';
import 'package:habit_breaker/resources/firebase_respository.dart';
import 'package:habit_breaker/view/connection_request.dart';
import 'package:provider/provider.dart';

import '../model/ConnectionRequestModel.dart';
import '../model/UserModel.dart';
import '../utils/utils.dart';
import '../view_model/UserDetailsProvider.dart';

class goals_container extends StatelessWidget {
  GoalModel? goalModel;
  goals_container({Key? key, required this.goalModel}) : super(key: key);
  UserModel? userModel;
  String? currentDateTime;
  FirebaseRepository repository = FirebaseRepository();
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    currentDateTime =
        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}";

    userModel =
        Provider.of<UserDetailsProvider>(context, listen: false).userDetails;
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
                child: InkWell(
                  child: Text(
                    "Ask for Connection",
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () async {
                    ConnectionRequestModel requestModel = _getRequestModel();
                    await repository.sentConnectionRequest(
                        requestModel: requestModel);
                    utils.toastMessage("Request Sent");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ConnectionRequestModel _getRequestModel() {
    ConnectionRequestModel requestModel = ConnectionRequestModel(
      senderName: userModel!.name!,
      senderUid: utils.getCurrentUserUid,
      receiverUid: goalModel!.userUid!,
      goalId:goalModel!.uid!,
      goalName: goalModel!.goalName!,
      sentDate: currentDateTime,
      deadline: goalModel!.deadline!
    );
    return requestModel;
  }
}
