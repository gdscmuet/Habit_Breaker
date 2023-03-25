import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/connection_request_widget.dart';
import '../model/ConnectionRequestModel.dart';
import '../resources/firebase_methods.dart';
import '../utils/utils.dart';

class ConnectionRequest extends StatelessWidget {
  ConnectionRequest({Key? key}) : super(key: key);
  // bool isConnected = false;
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
                        "All Your Connection Request",
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              FutureBuilder(
                builder: (ctx,
                    AsyncSnapshot<List<ConnectionRequestModel>> snapshot) {
                  if (snapshot.data == null) {
                    return const Center(child: Text("No goals created"));
                  } else if (snapshot.hasError) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.data!.length == 0) {
                    return const Center(child: Text("No goals created"));
                  } else {
                    return Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            // the number of items in the list
                            itemCount: snapshot.data!.length,

                            // display each item of the product list
                            itemBuilder: (context, index) {
                              return ConnectionRequestWidget(
                                requestModel: snapshot.data![index],
                              );
                            }));
                  }
                },
                future: FirebaseMethods.getConnectionRequest(
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
