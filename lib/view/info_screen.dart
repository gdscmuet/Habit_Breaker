import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/view/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/inputfields.dart';
import '../model/UserModel.dart';
import '../resources/StorageService.dart';
import '../resources/firebase_respository.dart';
import '../utils/utils.dart';
import '../view_model/UserDetailsProvider.dart';

class info_screen extends StatefulWidget {
  UserModel? userModel;

  info_screen({required this.userModel});

  @override
  State<info_screen> createState() => _info_screenState();
}

class _info_screenState extends State<info_screen> {
  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final FirebaseRepository _firebaseRepository = FirebaseRepository();

  void _saveUser(UserModel userModel) {
    _firebaseRepository.saveUserDataToFirestore(userModel).then((value) async {
      await StorageService.saveUser(userModel).then((value) async {
        //await  StorageService.readUser();
        Provider.of<UserDetailsProvider>(context, listen: false)
            .getUserLocally();
        // isLoading(false);
        utils.hideLoading();
        SharedPreferences preferences = await SharedPreferences.getInstance();
        await preferences.setInt('initScreen', 1);
        await preferences.setInt('isUser', 1);
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home_page()));
      });
    }).catchError((error) {
      // isLoading(false);
      utils.hideLoading();
      utils.flushBarErrorMessage(error.message.toString(), context);
    });
  }
  @override
  void dispose() {
    _ageController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  // autogroup4n5vEdZ (9Nu4BLLx6UXrqGPiz54N5v)
                  padding: EdgeInsets.only(
                      left: 27.w, top: 11.h, right: 16.w, bottom: 5.h),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // fillthefollowinginformationAGK (23:79)
                        margin: EdgeInsets.fromLTRB(0, 0, 96.w, 50.h),
                        constraints: BoxConstraints(
                          maxWidth: 212.w,
                        ),
                        child: Text(
                          'Fill the following information',
                          style: SafeGoogleFont(
                            'Sansita',
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xb21e1c1c),
                          ),
                        ),
                      ),
                      Container(
                        // autogroup4sw2SzX (9Nu3Prej9vd8srGavz4Sw2)
                        margin: EdgeInsets.fromLTRB(2.w, 0, 16.w, 40.h),
                        width: double.infinity,
                        height: 164.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupgmccFwy (9Nu3XrRQPygfqV1uZDgmCc)
                              margin: EdgeInsets.fromLTRB(0, 0, 15.w, 0),
                              width: 141.w,
                              height: 164.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffaf1179)),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    // florist5691544474108519XZ (23:89)
                                    left: 2.w,
                                    top: 40.h,
                                    child: Align(
                                      child: SizedBox(
                                        width: 139.w,
                                        height: 124.h,
                                        child: Image.asset(
                                          'assets/page-1/images/florist-5691544-4741085-1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // girlejD (23:92)
                                    left: 60.w,
                                    top: 23.h,
                                    child: Align(
                                      child: SizedBox(
                                        width: 26.w,
                                        height: 20.h,
                                        child: Text(
                                          'Girl',
                                          style: SafeGoogleFont(
                                            'Sansita',
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffaf1179),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroup5upcxV1 (9Nu3cgcgrbNGFRqq6n5upc)
                              width: 142.w,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // handsomeboy492961141183541QM1 (23:91)
                                    left: 3.w,
                                    top: 49.h,
                                    child: Align(
                                      child: SizedBox(
                                        width: 135.w,
                                        height: 115.h,
                                        child: Image.asset(
                                          'assets/page-1/images/handsome-boy-4929611-4118354-1-Q6w.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rectangle109VUw (23:94)
                                    child: Align(
                                      child: SizedBox(
                                        width: 141.w,
                                        height: 164.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                            border: Border.all(
                                                color: Color(0x994411af)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // boyWQ3 (23:93)
                                    left: 60.w,
                                    top: 23.h,
                                    child: SizedBox(
                                      width: 26.w,
                                      height: 20.h,
                                      child: Text(
                                        'Boy',
                                        style: SafeGoogleFont(
                                          'Sansita',
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff4411af),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      inputfields(
                        hint_text: 'Age',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: _ageController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Age";
                          } else {
                            return null;
                          }
                        },
                        // icon: (Icons.check),
                      ),
                      inputfields(
                        hint_text: 'gender',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: _genderController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter gender";
                          } else {
                            return null;
                          }
                        },
                        // icon: (Icons.check),
                      ),
                      inputfields(
                        hint_text: 'Phone',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: _phoneController,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter Phone";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        // icon: (Icons.check),
                      ),

                      // Container(
                      //   // autogroupzqwu1Lo (9Nu3nbVqdCaVrZL9xXZQWU)
                      //   margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5.h),
                      //   height: 32.h,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Color(0xff939191)),
                      //     color: Color(0xffffffff),
                      //     borderRadius: BorderRadius.circular(20.r),
                      //   ),
                      //   child: TextField(),
                      // ),
                      // Container(
                      //   // autogroupwxh6eef (9Nu3sWXKNGsmrv6uRdWxH6)
                      //   margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5.h),
                      //   // padding: EdgeInsets.fromLTRB(24.w, 9.h, 24.w, 11.h),
                      //   width: double.infinity,
                      //   height: 32.h,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Color(0xff939191)),
                      //     color: Color(0xffffffff),
                      //     borderRadius: BorderRadius.circular(20.r),
                      //   ),
                      //   child: TextField(),
                      // ),
                      // Container(
                      //   // autogroupmhkuHxX (9Nu3xFtQYRwggSz13eMhkU)
                      //   height: 32.h,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Color(0xff939191)),
                      //     color: Color(0xffffffff),
                      //     borderRadius: BorderRadius.circular(20.r),
                      //   ),
                      //   child: TextField(),
                      // ),
                    ],
                  ),
                ),
                Container(
                  // autogroupxfmzYNf (9Nu42kkusDAYik2cu2XFmz)
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        // vector24ro (23:102)
                        left: -90.w,
                        top: 450.h,
                        child: Image.asset(
                          'assets/page-1/images/vector-2-FW3.png',
                          width: 276.w,
                          height: 539.h,
                        ),
                      ),
                      Positioned(
                        // ellipse5BRd (23:101)
                        left: 107.w,
                        top: 480.h,
                        child: Image.asset(
                          'assets/page-1/images/ellipse-5-Yd9.png',
                          width: 467.w,
                          height: 524.h,
                        ),
                      ),
                      Positioned(
                        // rectangle105VSK (23:98)
                        left: 40.w,
                        top: 550.h,
                        child: InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // Navigator.pushNamed(context, RoutesName.infoScreen);
                            }
                            UserModel _userModel = UserModel(
                              name: widget.userModel!.name,
                              email: widget.userModel!.email,
                              age: _ageController.text,
                              gender: _genderController.text,
                              phone: "03103443222",
                              uid: utils.getCurrentUserUid(),
                            );
                            utils.showLoading(context);
                            _saveUser(_userModel);

                            // Navigator.pushNamed(context, RoutesName.homeScreen);
                          },
                          child: Container(
                              width: 274.w,
                              height: 46.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xfffbb346),
                              ),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: SafeGoogleFont(
                                    'Sansita',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              )),
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
