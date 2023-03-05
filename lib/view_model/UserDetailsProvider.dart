import 'package:flutter/cupertino.dart';
import 'package:habit_breaker/utils/utils.dart';

import '../model/UserModel.dart';
import '../resources/StorageService.dart';
import '../resources/firebase_respository.dart';

class UserDetailsProvider with ChangeNotifier {
  UserModel? userDetails;

  Future getUserLocally() async {
    userDetails = await StorageService.readUser();
    notifyListeners();
  }

  Future getUserFromServer(String uid, context) async {
    final FirebaseRepository _firebaseRepository = FirebaseRepository();
    userDetails = await _firebaseRepository.getUserDetails(uid);
    if (userDetails == null)
      utils.flushBarErrorMessage("No user found", context);
    notifyListeners();
  }
}
