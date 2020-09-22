import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthNotifier with ChangeNotifier {
  FirebaseUser _user;
  bool _isLoading = false;
  String _error = '';

  FirebaseUser get user => _user;

  bool get isLoading => _isLoading;

  String get error => _error;

  setUser(FirebaseUser user) {
    _user = user;
    notifyListeners();
  }

  setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  setError(String errorMessage) {
    _error = errorMessage;
    notifyListeners();
  }
}
