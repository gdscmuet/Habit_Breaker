import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_breaker/utils/Strings.dart';
import 'package:habit_breaker/utils/utils.dart';

import '../model/ConnectionRequestModel.dart';
import '../model/GoalModel.dart';
import '../model/UserModel.dart';

class FirebaseMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static final CollectionReference _userCollection =
      firestore.collection("users");

  static final CollectionReference _goalsCollection =
      firestore.collection("goal");

  static final CollectionReference _connectionRequestCollection =
      firestore.collection("connectionRequest");

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

  Future<void> sentConnectionRequest(
      ConnectionRequestModel requestModel) async {
    //  await _userCollection.doc(requestModel.senderUid).collection('connections').add(requestModel.toMap(requestModel));
    await _userCollection
        .doc(requestModel.receiverUid)
        .collection('connectionRequest')
        .add(requestModel.toMap(requestModel));
  }

  Future<void> accpetConnectionRequest(
      ConnectionRequestModel requestModel) async {
    await _userCollection
        .doc(requestModel.senderUid)
        .collection('connections')
        .add(requestModel.toMap(requestModel));
    await declineConnectionRequest(requestModel);
  }

  Future<void> declineConnectionRequest(
      ConnectionRequestModel requestModel) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(requestModel.receiverUid)
        .collection('connectionRequest')
        .where("goalId", isEqualTo: requestModel.goalId)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        FirebaseFirestore.instance
            .collection("users")
            .doc(requestModel.receiverUid)
            .collection('connectionRequest')
            .doc(element.id)
            .delete()
            .then((value) {
          // print("Success!");
          // utils.toastMessage("Request Declined");
        });
      });
    });
  }

  Future<User?> login(String email, String password, context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      // utils.hideLoading();
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

  static Future<List<GoalModel>> getUserGoals({required String uid}) async {
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

  static Future<List<ConnectionRequestModel>> getConnectionRequest(
      {required String uid}) async {
    List<ConnectionRequestModel> Models = [];
    QuerySnapshot<Map<String, dynamic>> snap = await FirebaseFirestore.instance
        .collection("users")
        .doc(utils.getCurrentUserUid)
        .collection('connectionRequest')
        .get();

    for (var i = 0; i < snap.docs.length; i++) {
      DocumentSnapshot docsSnap = snap.docs[i];
      ConnectionRequestModel model =
          ConnectionRequestModel.fromMap(docsSnap.data() as dynamic);
      Models.add(model);
    }
    return Models;
  }


  static Future<List<ConnectionRequestModel>> getConnections(
      {required String uid}) async {
    List<ConnectionRequestModel> Models = [];
    QuerySnapshot<Map<String, dynamic>> snap = await FirebaseFirestore.instance
        .collection("users")
        .doc(utils.getCurrentUserUid)
        .collection('connections')
        .get();

    for (var i = 0; i < snap.docs.length; i++) {
      DocumentSnapshot docsSnap = snap.docs[i];
      ConnectionRequestModel model =
          ConnectionRequestModel.fromMap(docsSnap.data() as dynamic);
      Models.add(model);
    }
    return Models;
  }
}


