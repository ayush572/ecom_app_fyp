import 'package:ecommerce_new/model/user_details_model.dart';
import 'package:ecommerce_new/resources/cloudfirestore_methods.dart';
import 'package:flutter/material.dart';

class UserDetailsProvider with ChangeNotifier {
  UserDetailsModel userDetails;

  UserDetailsProvider()
      : userDetails = UserDetailsModel(name: "Loading", address: "Loading");

  Future getData() async {
    userDetails = await CloudFirestoreClass().getNameAndAddress();
    notifyListeners();
  }
}