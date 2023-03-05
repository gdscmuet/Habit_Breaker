import 'package:firebase_auth/firebase_auth.dart';

import '../model/GoalModel.dart';
import '../model/UserModel.dart';
import 'firebase_methods.dart';
class FirebaseRepository{
    final FirebaseMethods _firebaseMethods = FirebaseMethods();
   Future<User?> signUp(String email, String password, context) =>
      _firebaseMethods.signUp(email, password, context);
  Future<UserModel?> getUserDetails(String? uid) =>
      _firebaseMethods.getUserDetails(uid);
        Future<void> saveUserDataToFirestore(UserModel userModel) =>
      _firebaseMethods.saveUserDataToFirestore(userModel);

         Future<void> saveGoalToFirestore(GoalModel goalModel) =>
      _firebaseMethods.saveGoalToFirestore(goalModel);
}