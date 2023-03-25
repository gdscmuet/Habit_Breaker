import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/components/connected_users_widget.dart';
import '../components/connection_request_widget.dart';
// import '../model/UserConnectionsModel.dart';
import '../model/UserModel.dart';
import '../resources/firebase_methods.dart';
import '../utils/utils.dart';
import '../model/ConnectionRequestModel.dart';

class UserConnections extends StatelessWidget {
  const UserConnections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
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
                        "All Your Connections",
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
                      // Text(
                      //   "All your connection request",
                      //   style: SafeGoogleFont(
                      //     'Sansita',
                      //     fontSize: 14.sp,
                      //     fontWeight: FontWeight.w400,
                      //     color: const Color(0xb21e1c1c),
                      //   ),
                      // ),
                    ],
                  ),
                  // Container(
                  //   // ellipse6z35 (43:2)
                  //   width: 60.w,
                  //   height: 60.h,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       image: AssetImage(
                  //           'assets/page-1/images/ellipse-6-bg-wUP.png'),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              // Text(
              //   "All your connection Request",
              //   style: SafeGoogleFont(
              //     'Sansita',
              //     fontSize: 14.sp,
              //     fontWeight: FontWeight.w700,
              //     color: const Color(0xb21e1c1c),
              //   ),
              // ),
              SizedBox(
                height: 20.h,
              ),
              FutureBuilder(
                builder: (ctx,
                    AsyncSnapshot<List<ConnectionRequestModel>> snapshot) {
                  if (snapshot.data == null) {
                    return Center(child: Text("No connections"));
                  } else if (snapshot.hasError) {
                    return CircularProgressIndicator();
                  } else if (snapshot.data!.length == 0) {
                    return Center(child: Text("No Connections"));
                  } else {
                    return Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            // the number of items in the list
                            itemCount: snapshot.data!.length,

                            // display each item of the product list
                            itemBuilder: (context, index) {
                              return ConnectedUsersWidget(
                                  requestModel: snapshot.data![index]);
                            }));
                  }
                },
                future: FirebaseMethods.getConnections(
                    uid: utils.getCurrentUserUid),
              ),
              // g,
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
                    // Text(
                    //   "Acheived",
                    //   style: SafeGoogleFont(
                    //     'poppins',
                    //     fontSize: 13.sp,
                    //     fontWeight: FontWeight.w400,
                    //     color: Colors.grey.shade500,
                    //   ),
                    // ),
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
              // SizedBox(
              //   height: 11.h,
              // ),
              // achived_container(),
            ],
          ),
        ),
      ),
    ));
  }
}
