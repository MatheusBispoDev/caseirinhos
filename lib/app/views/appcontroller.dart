import 'package:flutter/material.dart';

// Gerenciador de estado
class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDarkTheme = true;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
