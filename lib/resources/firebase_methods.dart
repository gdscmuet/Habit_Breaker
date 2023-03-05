import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_breaker/utils/utils.dart';

import '../model/GoalModel.dart';
import '../model/UserModel.dart';

class FirebaseMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static final CollectionReference _userCollection =
      firestore.collection("users");

  static final CollectionReference _goalsCollection =
      firestore.collection("goal");

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

  Future<User?> login(String email, String password, context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      utils.flushBarErrorMessage("Invalid email or password", context);
    }
  }

  Future<void> saveUserDataToFirestore(UserModel userModel) async {
    await _userCollection.doc(userModel.uid).set(userModel.toMap(userModel));
  }

  Future<void> saveGoalToFirestore(GoalModel goalModel) async {
    await _goalsCollection.doc(goalModel.uid).set(goalModel.toMap(goalModel));
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

  static Future<List<GoalModel>> getGoals() async {
    List<GoalModel> goalModels = [];
    QuerySnapshot<Map<String, dynamic>> snap =
        await FirebaseFirestore.instance.collection("goal").get();
    for (var i = 0; i < snap.docs.length; i++) {
      DocumentSnapshot docsSnap = snap.docs[i];

      GoalModel model = GoalModel.fromMap(docsSnap.data() as dynamic);
      goalModels.add(model);
    }
    return goalModels;
  }
   static Future<List<GoalModel>> getUserGoals(
      {required String uid}) async {
    List<GoalModel> goalModels = [];
    QuerySnapshot<Map<String, dynamic>> snap = await FirebaseFirestore.instance
        .collection("goal")
        .where("userUid", isEqualTo: uid)
        .get();
    for (var i = 0; i < snap.docs.length; i++) {
      DocumentSnapshot docsSnap = snap.docs[i];

      GoalModel model = GoalModel.fromMap(docsSnap.data() as dynamic);
      goalModels.add(model);
    }
    return goalModels;
  }

}
