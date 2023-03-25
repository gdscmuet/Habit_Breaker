import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/view/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/button2.dart';
import '../components/or_divider.dart';
import '../components/inputfields.dart';
import '../model/UserModel.dart';
import '../resources/StorageService.dart';
import '../resources/firebase_respository.dart';
import '../utils/routes/RoutesName.dart';
import '../utils/utils.dart';
import '../view_model/UserDetailsProvider.dart';

class login_screen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passController = TextEditingController();
  final FirebaseRepository _firebaseRepository = FirebaseRepository();
  void dispose() {
    _emailController.dispose();
    _passController.dispose();

    // emailFocusNode.dispose();
    // passwordFocusNode.dispose();
    // super.dispose();
  }

  void _login(context) {
    // utils.showLoading(context);
    _firebaseRepository
        .login(_emailController.text, _passController.text, context)
        .then((User? user) async {
      if (user != null) {
        _getUserDetails(user.uid, context);
      } else {
        // isLoading(false);
        // utils.hideLoading();
        utils.flushBarErrorMessage("Invalid Email or password", context);
      }
    });
  }

  void _getUserDetails(String uid, context) {
    _firebaseRepository.getUserDetails(uid).then((UserModel? userModel) {
      if (userModel != null) {
        StorageService.saveUser(userModel).then((value) async {
          Provider.of<UserDetailsProvider>(context, listen: false)
              .getUserLocally();
         
          SharedPreferences preferences = await SharedPreferences.getInstance();
          await preferences.setInt('initScreen', 1);
          // utils.hideLoading();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => home_page()));
        }).catchError((error) {
          // utils.hideLoading();
          utils.flushBarErrorMessage(error.message.toString(), context);
        });
      } else {
        // utils.hideLoading();
        utils.flushBarErrorMessage("User is null", context);
      }
    }).catchError((error) {
      // utils.hideLoading();
      utils.flushBarErrorMessage(error.message.toString(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // loginscreeny4o (19:13)
        height: double.infinity,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/page-1/img.png",),
          //   fit: BoxFit.fitHeight
          // ),
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // ellipse44c3 (19:14)
              left: -48.w,
              top: -90.h,
              child: Image.asset(
                'assets/page-1/images/ellipse-4-QSF.png',
                fit: BoxFit.fitWidth,
                width: 476.w,
                // height: 405.h,
              ),
            ),
            Positioned(
              // welcomebacka4b (19:15)
              left: 41.w,
              top: 53.h,
              child: Align(
                child: SizedBox(
                  width: 150.w,
                  height: 87.h,
                  child: Text(
                    'Welcome \nBack!',
                    style: SafeGoogleFont(
                      'Sansita',
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse5sZV (19:17)
              left: 125,
              top: 560,
              child: Image.asset(
                'assets/page-1/images/ellipse-5-9Xq.png',
                fit: BoxFit.fitWidth,
                width: 444.w,
                height: 499.h,
              ),
            ),
            Positioned(
              // vector2Crf (19:18)
              left: -79.w,
              top: 446.h,
              child: Image.asset(
                'assets/page-1/images/vector-2-6V1.png',
                width: 276.w,
                height: 539.h,
              ),
            ),
            Positioned(
              top: 200,
              left: 22,
              child: Container(
                height: 400.h,
                width: 317.w,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffC0BEBE)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      inputfields(
                        hint_text: 'Email',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      inputfields(
                        hint_text: 'Password',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: _passController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter password";
                          } else if (value.length < 6) {
                            return "password must be 6 characters long";
                          } else {
                            return null;
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Sansita",
                              fontSize: 10.sp),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      // const button1(),
                      InkWell(
                        child: Container(
                          width: 274.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            color: Color(0xffFCB346),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sansita",
                                fontSize: 16.sp),
                          )),
                        ),
                        onTap: () {
                          _login(context);
                        },
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      const or_line_widget(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const button2(),
                    ],
                    // body: Column(
                    //   children: [
                    //     TextFormField(
                    //       controller: _emailController,
                    //       keyboardType: TextInputType.emailAddress,
                    //       focusNode: emailFocusNode,
                    //       decoration: const InputDecoration(
                    //           hintText: 'Email',
                    //           //  labelText: 'Email',
                    //           prefixIcon: Icon(Icons.alternate_email)),
                    //       onFieldSubmitted: (valu) {
                    //         // utils.fieldFocusChange(
                    //             // context, emailFocusNode, passwordFocusNode);
                    //       },
                    //     ),
                    //     ValueListenableBuilder(
                    //         valueListenable: _obsecurePassword,
                    //         builder: (context, val, child) {
                    //           return TextFormField(
                    //             controller: _passwordController,
                    //             obscureText: _obsecurePassword.value,
                    //             focusNode: passwordFocusNode,
                    //             obscuringCharacter: "*",
                    //             decoration: InputDecoration(
                    //               hintText: 'Password',
                    //               labelText: 'Password',
                    //               prefixIcon: Icon(Icons.lock_open_rounded),
                    //               suffixIcon: InkWell(
                    //                   onTap: () {
                    //                     _obsecurePassword.value = !_obsecurePassword.value;
                    //                   },
                    //                   child: Icon(_obsecurePassword.value
                    //                       ? Icons.visibility_off_outlined
                    //                       : Icons.visibility)),
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
