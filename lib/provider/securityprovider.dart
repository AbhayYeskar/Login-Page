import 'package:flutter/material.dart';

class SecurityProvider with ChangeNotifier {
  String _securityAnswer = '';

  String get securityAnswer => _securityAnswer;

  void updateAnswer(String value) {
    _securityAnswer = value;
    notifyListeners();
  }

  bool validateAnswer(String input) {
    // Replace with your actual logic or fetched data
    return input.toLowerCase().trim() == "paris";
  }
}
