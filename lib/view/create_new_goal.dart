import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/model/GoalModel.dart';
import 'package:provider/provider.dart';

import '../components/inputfields.dart';
import '../model/UserModel.dart';
import '../resources/firebase_respository.dart';
import '../utils/routes/RoutesName.dart';
import '../utils/utils.dart';
import '../view_model/UserDetailsProvider.dart';

class create_new_goal extends StatelessWidget {
  create_new_goal({Key? key}) : super(key: key);

  final TextEditingController _goalController = TextEditingController();

  final TextEditingController _deadlineController = TextEditingController();

  final TextEditingController _categoryController = TextEditingController();

  final FirebaseRepository _firebaseRepository = FirebaseRepository();

  void _saveGoal(GoalModel goalModel, context) {
    // utils.showLoading(context);
    _firebaseRepository.saveGoalToFirestore(goalModel).then((value) async {
      // utils.hideLoading();
      utils.toastMessage("goal added");
      Navigator.pushNamed(context, RoutesName.homeScreen);
    }).catchError((error) {
      // utils.hideLoading();
      utils.flushBarErrorMessage(error.message.toString(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    UserModel? user =
        Provider.of<UserDetailsProvider>(context, listen: false).userDetails;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 70,
              left: 82,
              child: Container(
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.29),
                    offset: Offset(3, 5),
                    spreadRadius: 5,
                    blurRadius: 4,
                  ),
                ]),
                height: 238.h,
                width: 238.w,
              ),
            ),
            Positioned(
              top: -222,
              left: -156,
              child: Image.asset(
                "assets/page-1/images/vector-1-dhm.png",
                width: 786.w,
                height: 530.h,
              ),
            ),
            Positioned(
              top: 70,
              left: 82,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.white)),
                height: 238.h,
                width: 238.w,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/page-1/images/ellipse-7.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 327.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(maxWidth: 10000),
                      child: Text(
                        "Personal Development Goal",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          // height: 1.2 * ffem / fem,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Let’s make a Goal together,",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          // height: 1.2 * ffem / fem,
                          color: Color(0xffD27575),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Set your Goal with us!",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          // height: 1.2 * ffem / fem,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Set a Goal",
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        // height: 1.2 * ffem / fem,
                        color: Colors.black54,
                      ),
                    ),
                    // Container(
                    //   height: 30,
                    //   child: TextField(),
                    // ),
                    inputfields(
                      hint_text: 'Goal Name',
                      currentNode: null,
                      focusNode: null,
                      nextNode: null,
                      controller: _goalController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Goal Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Deadline",
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        // height: 1.2 * ffem / fem,
                        color: Colors.black54,
                      ),
                    ),
                    inputfields(
                      hint_text: 'Deadline',
                      currentNode: null,
                      focusNode: null,
                      nextNode: null,
                      controller: _deadlineController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Deadline";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Select Category",
                      style: SafeGoogleFont(
                        'Sansita',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        // height: 1.2 * ffem / fem,
                        color: Colors.black54,
                      ),
                    ),
                    inputfields(
                      hint_text: 'Category',
                      currentNode: null,
                      focusNode: null,
                      nextNode: null,
                      controller: _categoryController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Goal Category";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {
                          GoalModel _goalModel = GoalModel(
                            uid: utils.getUid(),
                            userUid: utils.getCurrentUserUid,
                            goalName: _goalController.text,
                            userName: user!.name,
                            category: _categoryController.text,
                            deadline: _deadlineController.text,
                          );
                          _saveGoal(_goalModel, context);
                          // Navigator.pushNamed(
                          //     context, RoutesName.searchForGoals);
                        },
                        child: Container(
                          height: 65.h,
                          width: 255.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFCB346),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Center(
                            child: Text(
                              "Create a Goal",
                              style: SafeGoogleFont(
                                'Sansita',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                // height: 1.2 * ffem / fem,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
