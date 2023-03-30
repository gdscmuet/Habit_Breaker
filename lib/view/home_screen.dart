import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_breaker/components/today_challenge_container.dart';
import 'package:provider/provider.dart';

import '../components/boxShadow.dart';
import '../model/GoalModel.dart';
import '../model/UserModel.dart';
import '../resources/firebase_methods.dart';
import '../utils/routes/RoutesName.dart';
import '../utils/utils.dart';
import '../view_model/UserDetailsProvider.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  Future<void> initializeUser() async {
    await Provider.of<UserDetailsProvider>(context, listen: false)
        .getUserLocally();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
    initializeUser();
  }

  @override
  Widget build(BuildContext context) {
    UserModel? user =
        Provider.of<UserDetailsProvider>(context, listen: false).userDetails;
// print("in home screen");
// print(user!.name!);
    double baseWidth = 390;
    // double fem = MediaQuery.of(context).size.width / baseWidth;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 46.h,
                ),
                Container(
                  // autogroup8tiy2yR (9NtseJZkL7HzCbpGaT8TiY)
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25.w,
                      ),
                      Container(
                        // hellofarheenYB5 (5:2)
                        constraints: BoxConstraints(
                          maxWidth: 100.w,
                        ),
                        child: Text(
                          "hello ${user!.name!}",
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            // height: 1.2 * ffem / fem,
                            color: Color(0x7f000000),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 124.w,
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
                              ))
                          // child: Image.asset(
                          //   'assets/page-1/images/ellipse-6-bg-wUP.png',
                          // ),
                          ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                shadow_textfield(),
                SizedBox(
                  height: 32.h,
                ),
                Container(
                  height: 330.h,
                  width: 350.w,
                  child: FutureBuilder(
                    builder: (ctx, AsyncSnapshot<List<GoalModel>> snapshot) {
                      if (snapshot.data == null) {
                        return const Center(child: Text("No goals created"));
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else if (snapshot.data!.length == 0) {
                        return Center(child: Text("No goals created"));
                      } else {
                        return Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                // the number of items in the list
                                itemCount: snapshot.data!.length,
                                // display each item of the product list
                                itemBuilder: (context, index) {
                                  return today_challenge_container(
                                    model: snapshot.data![index],
                                  );
                                }));
                      }
                    },
                    future: FirebaseMethods.getUserGoals(
                        uid: utils.getCurrentUserUid),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.createNewGoal);
                  },
                  child: Container(
                    height: 65.h,
                    width: 357.w,
                    decoration: BoxDecoration(
                      color: Color(0xff7FCFCF),
                      borderRadius: BorderRadius.circular(34.r),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add a New Goal",
                            style: SafeGoogleFont(
                              'Sansita',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              // height: 1.2 * ffem / fem,
                              color: Color(0xfffefefe),
                            ),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Container(
                            width: 16.w,
                            height: 16.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(Icons.add,
                                size: 15.sp, color: Color(0xff7FCFCF)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  // discoversbH (5:6)
                  child: Text(
                    'Discover',
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      // height: 1.2 * ffem / fem,
                      color: Color(0x7f000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // autogroupnoyzBby (9Ntwcmn4XqbrvxQY11noyz)
                  width: double.infinity,
                  height: 95.h,
                  child: Row(
                    children: [
                      Container(
                        // autogroupshegXfq (9NtwpMH6yd7kQLoPKeSHeG)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffe1c3e6),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 94.w,
                              height: 77.h,
                              child: Image.asset(
                                'assets/page-1/images/dumbbellspreview-removebg-preview-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 38.w,
                              height: 12.h,
                              child: Text(
                                'Workout',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xff9830aa),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        // autogroupbqfn3Go (9Ntwtr9cJQLcSdr1B2bqfn)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffc37f),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 76.w,
                              height: 74.h,
                              child: Image.asset(
                                'assets/page-1/images/invest-for-education-5768769-4833566-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 43.w,
                              height: 12.h,
                              child: Text(
                                'Education',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xffb17809),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        // autogroupnz2tj39 (9Ntwz6VsBK6cpeQ4LJnz2t)
                        width: 104.7.w,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff3adad),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 88.w,
                              height: 79.h,
                              child: Image.asset(
                                'assets/page-1/images/health-care-6869166-5628503-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 53.w,
                              height: 12.h,
                              child: Text(
                                'Good Health',
                                style: SafeGoogleFont(
                                  'Sansita',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  // height: 1.2 * ffem / fem,
                                  color: Color(0xffb81616),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
