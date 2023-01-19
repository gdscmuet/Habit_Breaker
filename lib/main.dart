import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/utils/routes/Routes.dart';
import 'package:habit_breaker/utils/routes/RoutesName.dart';
import 'package:habit_breaker/view/create_new_goal.dart';
import 'package:habit_breaker/view/home_screen.dart';
import 'package:habit_breaker/view/info_screen.dart';
import 'package:habit_breaker/view/login_screen.dart';
import 'package:habit_breaker/view/onboarding_screen.dart';
import 'package:habit_breaker/view/profile_screen.dart';
import 'package:habit_breaker/view/search_for_goals.dart';
import 'package:habit_breaker/view/signup_screen.dart';
import 'package:habit_breaker/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: create_new_goal(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          // onGenerateRoutes: Routes.onGenerateRoute(settings),
        );
      },
    );
  }
}
