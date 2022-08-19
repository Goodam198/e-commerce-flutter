import 'package:flutter/material.dart';
import 'package:e_commerce/classes/class_file.dart';

class UserProvider with ChangeNotifier{

  User user = new User(name: 'Tim Cook', image: '6.jpg', description:  '"I love to buy vinyl records, iPads, and other tech gadgets!"'); //, favourites: favourites, purchases: purchases, toBuy: toBuy

  void login({required name, required image, required description}) {
    //, required favourites, required purchases, required toBuy
    // TODO: implement login

    notifyListeners();
  }

}



