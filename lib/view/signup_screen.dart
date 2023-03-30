import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/view/info_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/button1.dart';
import '../components/or_divider.dart';
import '../components/inputfields.dart';
import '../model/UserModel.dart';
import '../resources/StorageService.dart';
import '../resources/firebase_respository.dart';
import '../utils/utils.dart';

class signup_screen extends StatefulWidget {
  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final FirebaseRepository _firebaseRepository = FirebaseRepository();

  // TextEditingController _emailController =TextEditingController();
  void _signup(UserModel userModel) {
    _firebaseRepository
        .signUp(_emailController.text, _passController.text, context)
        .then((User? user) async {
      if (user != null) {
        // userModel.uid = user.uid;
        // userModel.profileImage = await _firebaseRepository.uploadProfileImage(
        //     imageFile: _profileImage!, uid: userModel.uid!);
        // utils.hideLoading();
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => info_screen(
                    userModel: userModel,
                  )),
        );
        //  _saveUser(user, userModel);
      } else {
        // isLoading(false);
        // utils.hideLoading();
        utils.flushBarErrorMessage('Failed to Signup', context);
      }
    }).catchError((error) {
      // isLoading(false);
      // utils.hideLoading();
      utils.flushBarErrorMessage(error.message.toString(), context);
    });
  }

  // void _saveUser(User firebaseUser, UserModel userModel) {
  //   _firebaseRepository.saveUserDataToFirestore(userModel).then((value) async {
  //     await StorageService.saveUser(userModel).then((value) async {
  //       //await  StorageService.readUser();
  //       Provider.of<UserDetailsProvider>(context, listen: false)
  //           .getUserLocally();
  //       // isLoading(false);
  //       utils.hideLoading();
  //       SharedPreferences preferences = await SharedPreferences.getInstance();
  //       await preferences.setInt('initScreen', 1);
  //       await preferences.setInt('isUser', 1);
  //       Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => navigation_page()));
  //     });
  //   }).catchError((error) {
  //     // isLoading(false);
  //     utils.hideLoading();
  //     utils.flushBarErrorMessage(error.message.toString(), context);
  //   });
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // ellipse44c3 (19:14)
              left: -60.w,
              top: -120.h,
              child: Image.asset(
                'assets/img_2.png',
                fit: BoxFit.fitWidth,
                width: 476.w,
                height: 405.h,
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
                    'Create \nAccount',
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        inputfields(
                          hint_text: 'Name',
                          currentNode: null,
                          focusNode: null,
                          nextNode: null,
                          controller: _nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                        inputfields(
                          hint_text: 'Email',
                          currentNode: null,
                          focusNode: null,
                          nextNode: null,
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Correct Email";
                            } else {
                              return null;
                            }
                          },
                          // icon: (Icons.check),
                        ),
                        // inputfields(
                        //   hint_text: 'Phone Number',
                        //   currentNode: null,
                        //   focusNode: null,
                        //   nextNode: null,
                        //   controller: _emailController,
                        //   validator: (value) {
                        //     if (value!.isEmpty) {
                        //       return "Enter phone Number";
                        //     } else {
                        //       return null;
                        //     }
                        //   },
                        //   // icon: (Icons.check),
                        // ),
                        inputfields(
                          hint_text: 'Password',
                          currentNode: null,
                          focusNode: null,
                          nextNode: null,
                          controller: _passController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            } else {
                              return null;
                            }
                          },
                          // icon: (Icons.check),
                        ),
                        // inputfields(
                        //   hint_text: 'Password',
                        //   currentNode: null,
                        //   focusNode: null,
                        //   nextNode: null,
                        //   controller: _emailController,
                        //   validator: (value) {
                        //     if (value!.isEmpty) {
                        //       return "Enter Correct Email";
                        //     } else {
                        //       return null;
                        //     }
                        //   },
                        //   // icon: (Icons.check),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 190),
                        //   child: Text(
                        //     "Forgot Password?",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontFamily: "Sansita",
                        //         fontSize: 10.sp),
                        //   ),
                        // ),
                        SizedBox(
                          height: 28.h,
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              final snackbar =
                                  SnackBar(content: Text('fields validated'));
                              // utils.toastMessage('validated');
                              UserModel _userModel = UserModel(
                                name: _nameController.text,
                                email: _emailController.text,
                              );
                              // utils.showLoading(context);
                              _signup(_userModel);
                              // Navigator.pushNamed(context, RoutesName.infoScreen);
                            }
                          },
                          child: Container(
                            width: 274.w,
                            height: 46.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: Color(0xffC0BEBE)),
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Color(0xffC0BEBE),
                                    fontFamily: "Sansita",
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const or_line_widget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const button1(),
                      ],
                    ),
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
