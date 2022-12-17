import 'package:flutter/cupertino.dart';


class UserDetailsProvider with ChangeNotifier{
  // UserModel? userDetails;
  // UserDetailsProvider():userDetails=UserModwe(name: "Loading", phone: "Loading");

  Future getUserLocally() async {
    // userDetails = await Firestore_method().getNameAndAddress();
    // userDetails =await StorageService.readUser();
    notifyListeners();
  }
  
}