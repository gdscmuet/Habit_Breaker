import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_breaker/view/home_screen.dart';


class FirebaseNetworkServices{

  static Future signUp(
      BuildContext context,
      String email,
      String password
      ) async{
    // if(Utils.validateEmail(emailController.text) ) {
    //   print("Invalid email!");
    //   return;
    // }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      print("SignIn successfull!");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_page())
      );

    }on FirebaseAuthException catch(e){
      print(e);
    }
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  Future login(
      BuildContext context,
      String email,
      String password
      ) async{
    if(emailController.text.isEmpty || passwordController.text.isEmpty) {
      print("Fields are empty");
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      print("SignIn successfull!");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_page())
      );
    }on FirebaseAuthException catch(e){
      print(e);
    }
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }
}