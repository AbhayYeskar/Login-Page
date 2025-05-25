// auth_provider.dart
import 'package:flutter/material.dart';

class Dashboardprovider with ChangeNotifier {
  bool _isLoggedIn = true;

  bool get isLoggedIn => _isLoggedIn;

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
