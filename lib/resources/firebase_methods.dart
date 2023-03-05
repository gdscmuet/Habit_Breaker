import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_breaker/utils/utils.dart';

import '../model/GoalModel.dart';
import '../model/UserModel.dart';

class FirebaseMethods{
    final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static final CollectionReference _userCollection =
      firestore.collection("users");
  
  Future<User?> signUp(String email, String password, context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      utils.flushBarErrorMessage(e.toString(), context);
    }
  }
    Future<void> saveUserDataToFirestore(UserModel userModel) async {
    await _userCollection.doc(userModel.uid).set(userModel.toMap(userModel));
  }
   Future<void> saveGoalToFirestore(GoalModel goalModel) async {
    await _userCollection.doc(goalModel.uid).set(goalModel.toMap(goalModel));
  }
  
  Future<UserModel?> getUserDetails(String? uid) async {
    DocumentSnapshot documentSnapshot = await _userCollection.doc(uid).get();
    if (documentSnapshot.data() != null) {
      UserModel userModel =
          UserModel.fromMap(documentSnapshot.data() as Map<String, dynamic>);
      if (userModel != null) {
        return userModel;
      } else {
        return null;
      }
    }
  }
}