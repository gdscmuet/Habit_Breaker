import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../components/button1.dart';
import '../components/button2.dart';
import '../components/or_divider.dart';
import '../components/inputfields.dart';
import '../utils/utils.dart';

class login_screen extends StatelessWidget {
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
                'assets/page-1/images/Ellipse-4-s.png',
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
                        controller: null,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      inputfields(
                        hint_text: 'Password',
                        currentNode: null,
                        focusNode: null,
                        nextNode: null,
                        controller: null,
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
                      const button1(),
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