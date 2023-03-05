import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_breaker/utils/routes/Routes.dart';
import 'package:habit_breaker/view/signup_screen.dart';
import 'package:habit_breaker/view_model/UserDetailsProvider.dart';
import 'package:provider/provider.dart';

void main() async{
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
            // home: onboarding_screen(),
            home: signup_screen(),
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
