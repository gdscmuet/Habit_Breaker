import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/components/goals_container.dart';

import '../model/GoalModel.dart';
import '../resources/firebase_methods.dart';
import '../utils/utils.dart';

class search_for_goals extends StatefulWidget {
  const search_for_goals({Key? key}) : super(key: key);

  @override
  State<search_for_goals> createState() => _search_for_goalsState();
}

class _search_for_goalsState extends State<search_for_goals> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23),
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
                Text(
                  "Welcome Back!",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xb21e1c1c),
                  ),
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
              height: 2.7.h,
            ),
            Container(
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints(
                maxWidth: 200.w,
              ),
              child: Text(
                "Search the goals for your bettement",
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xb21e1c1c),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 39.h,
              width: 340.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: Colors.black)),
              child: const TextField(),
            ),
            SizedBox(
              height: 12.h,
            ),
            // Wrap(
            //   spacing: 15,
            //   children: const [
            //     goals_container(),
            //     goals_container(),
            //     goals_container(),
            //     goals_container(),
            //   ],
            // ),
            FutureBuilder(
              builder: (ctx, AsyncSnapshot<List<GoalModel>> snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      // controller: _scrollViewController,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => AdPage(
                                //             hostel: snapshot.data![index])),
                                //   );
                                // },
                                child: goals_container(
                              goalModel: snapshot.data![index],
                            )),
                          ],
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return CircularProgressIndicator();
                }
                // Displaying LoadingSpinner to indicate waiting state
                return Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return const CircularProgressIndicator();
                    },
                  ),
                );
              },
              future: FirebaseMethods.getGoals(),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 200.w,
              ),
              child: Text(
                "These goals didn’t meet your requirements?",
                style: SafeGoogleFont(
                  'poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 59.h,
              width: 366.w,
              decoration: BoxDecoration(
                color: const Color(0xffCEA3D7),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                child: Text(
                  "Add a new Goal",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
