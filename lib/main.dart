import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/utils/routes/Routes.dart';
import 'package:habit_breaker/view/connection_request.dart';
import 'package:habit_breaker/view/home_screen.dart';
import 'package:habit_breaker/view/login_screen.dart';
import 'package:habit_breaker/view/onboarding_screen.dart';
import 'package:habit_breaker/view/search_for_goals.dart';
import 'package:habit_breaker/view/signup_screen.dart';
import 'package:habit_breaker/view/user_connections.dart';
import 'package:habit_breaker/view/user_goals.dart';
import 'package:habit_breaker/view_model/UserDetailsProvider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserDetailsProvider()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            // home: home_page(),
            // home: signup_screen(),
            // home: UserConnections(),
            // home: ConnectionRequest(),
            // home: search_for_goals(),
            home: login_screen(),
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: Routes.onGenerateRoute,
          ),
        );
      },
    );
  }
}
