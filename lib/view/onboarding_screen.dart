import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/view/home_screen.dart';

import '../utils/routes/RoutesName.dart';
import '../utils/utils.dart';

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: -50,
                top: 330,
                child: Image.asset(
                  "assets/page-1/images/vector-2-2KD.png",
                  width: 276.w,
                  height: 539.h,
                ),
              ),
              Positioned(
                top: -45,
                child: Image.asset(
                  "assets/page-1/images/vector-1.png",
                ),
              ),
              Positioned(
                top: 500,
                left: 147,
                child: Image.asset(
                  "assets/page-1/images/ellipse-5-RG7.png",
                  height: 499.h,
                  width: 444.w,
                ),
              ),
              Positioned(
                left: 42,
                top: 80,
                child: Text(
                  "Welcome!",
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    // height: 1.2 * ffem / fem,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 130,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 260.w),
                  child: Text(
                    "we are really happy to see you here.",
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 48,
                  top: 580,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => onbording_screen_pages()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 45, right: 45),
                      width: 253,
                      height: 46,
                      decoration: BoxDecoration(
                        color: const Color(0xfffCB346),
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Let's go!",
                            style: SafeGoogleFont(
                              'Sansita',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              // height: 1.2 * ffem / fem,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            "assets/page-1/images/arrow-right-1-1o1.png",
                            width: 23,
                            height: 23,
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class onboarding_content extends StatelessWidget {
  String image, title, description;

  onboarding_content(
      {required this.image,
      required this.title,
      required this.description,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -50,
              top: 430,
              child: Image.asset(
                "assets/page-1/images/vector-2-2KD.png",
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: -250,
              left: -120,
              child: Image.asset(
                "assets/page-1/images/ellipse-4-QSF.png",
                height: 500,
              ),
            ),
            Positioned(
              top: 500,
              left: 147,
              child: Image.asset(
                "assets/page-1/images/ellipse-5-RG7.png",
                height: 499.h,
                width: 444.w,
              ),
            ),
            Positioned(
              top: 243,
              left: 50,
              child: Image.asset(
                image!,
                height: 270.h,
                width: 270.w,
              ),
            ),
            Positioned(
              left: 42,
              top: 80,
              child: Text(
                title!,
                style: SafeGoogleFont(
                  'Sansita',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  // height: 1.2 * ffem / fem,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 130,
              child: Container(
                constraints: BoxConstraints(maxWidth: 270.w),
                child: Text(
                  description!,
                  style: SafeGoogleFont(
                    'Sansita',
                    fontSize: 16.sp,
                    // height: 1.2 * ffem / fem,
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

class onbording_screen_pages extends StatefulWidget {
  onbording_screen_pages({Key? key}) : super(key: key);

  @override
  State<onbording_screen_pages> createState() => _onbording_screen_pagesState();
}

class _onbording_screen_pagesState extends State<onbording_screen_pages> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Expanded(
                  child: PageView.builder(
                      itemCount: data.length,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return onboarding_content(
                            image: data[index].image,
                            title: data[index].title,
                            description: data[index].description);
                      })),
              // Container(
              //   padding: const EdgeInsets.only(left: 45, right: 45),
              //   width: 253,
              //   height: 46,
              //   decoration: BoxDecoration(
              //     color: const Color(0xfffCB346),
              //     borderRadius: BorderRadius.circular(30.r),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Let's go!",
              //         style: SafeGoogleFont(
              //           'Sansita',
              //           fontSize: 16.sp,
              //           fontWeight: FontWeight.w700,
              //           // height: 1.2 * ffem / fem,
              //           color: Colors.white,
              //         ),
              //       ),
              //       Image.asset(
              //         "assets/page-1/images/arrow-right-1-1o1.png",
              //         width: 23,
              //         height: 23,
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
          Positioned(
              left: 48,
              top: 580,
              child: InkWell(
                onTap: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                  count++;
                  if (data.length == count) {
                    Navigator.pushNamed(context, RoutesName.login);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 45, right: 45),
                  width: 253,
                  height: 46,
                  decoration: BoxDecoration(
                    color: const Color(0xfffCB346),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Let's go!",
                        style: SafeGoogleFont(
                          'Sansita',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          // height: 1.2 * ffem / fem,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        "assets/page-1/images/arrow-right-1-1o1.png",
                        width: 23,
                        height: 23,
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}

final List<Onboard> data = [
  Onboard(
      image:
          "assets/page-1/images/two-teenager-thumbs-up-gesture-4551904-3784288-1.png",
      title: "Choose your Partner",
      description:
          "Choose your compatible partner and achieve your goals together and shine."),
  Onboard(
      image: "assets/page-1/images/download-removebg-preview-1.png",
      title: "Set Your Goals",
      description:
          "Set the goal with your partner that you both want accomplish"),
  Onboard(
      image:
          "assets/page-1/images/mission-milestone-flag-single-isolated-icon-vector-36317296-removebg-preview-1.png",
      title: "Acieve Milestones",
      description:
          "Set the goal with your partner that you both want accomplish"),
];

class Onboard {
  final String image, title, description;
  Onboard(
      {required this.image, required this.title, required this.description});
}

// class onboarding_screen_1 extends StatelessWidget {
//   const onboarding_screen_1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Positioned(
//               left: -50,
//               top: 430,
//               child: Image.asset(
//                 "assets/page-1/images/vector-2-2KD.png",
//                 width: 276.w,
//                 height: 539.h,
//               ),
//             ),
//             Positioned(
//               top: -250,
//               left: -120,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-4-QSF.png",
//                 height: 500,
//               ),
//             ),
//             Positioned(
//               top: 500,
//               left: 147,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-5-RG7.png",
//                 height: 499.h,
//                 width: 444.w,
//               ),
//             ),
//             Positioned(
//               top: 243,
//               left: 50,
//               child: Image.asset(
//                 "assets/page-1/images/two-teenager-thumbs-up-gesture-4551904-3784288-1.png",
//                 height: 270.h,
//                 width: 270.w,
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 80,
//               child: Text(
//                 "Choose your Partner",
//                 style: SafeGoogleFont(
//                   'Sansita',
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w700,
//                   // height: 1.2 * ffem / fem,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 130,
//               child: Container(
//                 constraints: BoxConstraints(maxWidth: 270.w),
//                 child: Text(
//                   "Choose your compatible partner and achieve your goals together and shine.",
//                   style: SafeGoogleFont(
//                     'Sansita',
//                     fontSize: 16.sp,
//                     // height: 1.2 * ffem / fem,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                 left: 48,
//                 top: 580,
//                 child: InkWell(
//                   child: Container(
//                     padding: const EdgeInsets.only(left: 45, right: 45),
//                     width: 253,
//                     height: 46,
//                     decoration: BoxDecoration(
//                       color: const Color(0xfffCB346),
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Let's go!",
//                           style: SafeGoogleFont(
//                             'Sansita',
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w700,
//                             // height: 1.2 * ffem / fem,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Image.asset(
//                           "assets/page-1/images/arrow-right-1-1o1.png",
//                           width: 23,
//                           height: 23,
//                         )
//                       ],
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class onboarding_screen_2 extends StatelessWidget {
//   const onboarding_screen_2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Positioned(
//               left: -50,
//               top: 430,
//               child: Image.asset(
//                 "assets/page-1/images/vector-2-2KD.png",
//                 width: 276.w,
//                 height: 539.h,
//               ),
//             ),
//             Positioned(
//               top: -250,
//               left: -120,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-4-QSF.png",
//                 height: 500,
//               ),
//             ),
//             Positioned(
//               top: 500,
//               left: 147,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-5-RG7.png",
//                 height: 499.h,
//                 width: 444.w,
//               ),
//             ),
//             Positioned(
//               top: 243,
//               left: 50,
//               child: Image.asset(
//                 "assets/page-1/images/download-removebg-preview-1.png",
//                 height: 300.h,
//                 width: 300.w,
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 80,
//               child: Text(
//                 "Set Your Goals",
//                 style: SafeGoogleFont(
//                   'Sansita',
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w700,
//                   // height: 1.2 * ffem / fem,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 130,
//               child: Container(
//                 constraints: BoxConstraints(maxWidth: 270.w),
//                 child: Text(
//                   "Set the goal with your partner that you both want accomplish",
//                   style: SafeGoogleFont(
//                     'Sansita',
//                     fontSize: 16.sp,
//                     // height: 1.2 * ffem / fem,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                 left: 48,
//                 top: 580,
//                 child: InkWell(
//                   child: Container(
//                     padding: EdgeInsets.only(left: 45, right: 45),
//                     width: 253,
//                     height: 46,
//                     decoration: BoxDecoration(
//                       color: Color(0xfffCB346),
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Let's go!",
//                           style: SafeGoogleFont(
//                             'Sansita',
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w700,
//                             // height: 1.2 * ffem / fem,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Image.asset(
//                           "assets/page-1/images/arrow-right-1-1o1.png",
//                           width: 23,
//                           height: 23,
//                         )
//                       ],
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class onboarding_screen_3 extends StatelessWidget {
//   const onboarding_screen_3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Positioned(
//               left: -50,
//               top: 430,
//               child: Image.asset(
//                 "assets/page-1/images/vector-2-2KD.png",
//                 width: 276.w,
//                 height: 539.h,
//               ),
//             ),
//             Positioned(
//               top: -250,
//               left: -120,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-4-QSF.png",
//                 height: 500,
//               ),
//             ),
//             Positioned(
//               top: 500,
//               left: 147,
//               child: Image.asset(
//                 "assets/page-1/images/ellipse-5-RG7.png",
//                 height: 499.h,
//                 width: 444.w,
//               ),
//             ),
//             Positioned(
//               top: 223,
//               left: 30,
//               child: Image.asset(
//                 "assets/page-1/images/mission-milestone-flag-single-isolated-icon-vector-36317296-removebg-preview-1.png",
//                 height: 300.h,
//                 width: 300.w,
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 80,
//               child: Text(
//                 "Acieve Milestones",
//                 style: SafeGoogleFont(
//                   'Sansita',
//                   fontSize: 24.sp,
//                   fontWeight: FontWeight.w700,
//                   // height: 1.2 * ffem / fem,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 42,
//               top: 130,
//               child: Container(
//                 constraints: BoxConstraints(maxWidth: 270.w),
//                 child: Text(
//                   "Set the goal with your partner that you both want accomplish",
//                   style: SafeGoogleFont(
//                     'Sansita',
//                     fontSize: 16.sp,
//                     // height: 1.2 * ffem / fem,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                 left: 48,
//                 top: 580,
//                 child: InkWell(
//                   child: Container(
//                     padding: EdgeInsets.only(left: 45, right: 45),
//                     width: 253,
//                     height: 46,
//                     decoration: BoxDecoration(
//                       color: Color(0xfffCB346),
//                       borderRadius: BorderRadius.circular(30.r),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Let's go!",
//                           style: SafeGoogleFont(
//                             'Sansita',
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w700,
//                             // height: 1.2 * ffem / fem,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Image.asset(
//                           "assets/page-1/images/arrow-right-1-1o1.png",
//                           width: 23,
//                           height: 23,
//                         )
//                       ],
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
