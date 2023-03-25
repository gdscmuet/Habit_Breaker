import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_breaker/model/ConnectionRequestModel.dart';

import '../model/GoalModel.dart';
import '../model/UserModel.dart';
import 'firebase_methods.dart';
class FirebaseRepository{
    final FirebaseMethods _firebaseMethods = FirebaseMethods();
   Future<User?> signUp(String email, String password, context) =>
      _firebaseMethods.signUp(email, password, context);
      
  Future<User?> login(String email, String password, context) =>
      _firebaseMethods.login(email, password, context);

Future<void> sentConnectionRequest({required ConnectionRequestModel requestModel}) =>
      _firebaseMethods.sentConnectionRequest(requestModel);


Future<void> declineConnectionRequest({required ConnectionRequestModel requestModel}) =>
      _firebaseMethods.declineConnectionRequest(requestModel);

Future<void> acceptConnectionRequest({required ConnectionRequestModel requestModel}) =>
      _firebaseMethods.accpetConnectionRequest(requestModel);

  Future<UserModel?> getUserDetails(String? uid) =>
      _firebaseMethods.getUserDetails(uid);
        Future<void> saveUserDataToFirestore(UserModel userModel) =>
      _firebaseMethods.saveUserDataToFirestore(userModel);

         Future<void> saveGoalToFirestore(GoalModel goalModel) =>
      _firebaseMethods.saveGoalToFirestore(goalModel);
}