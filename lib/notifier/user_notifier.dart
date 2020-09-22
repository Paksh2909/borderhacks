import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/models/user.dart';

class UserNotifier with ChangeNotifier {
  User _user;

  User get user => _user;

  setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
