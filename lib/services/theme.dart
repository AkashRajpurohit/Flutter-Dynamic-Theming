import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData themeData;

  ThemeChanger({ @required this.themeData });

  getTheme() => themeData;

  setTheme(ThemeData theme) {
    this.themeData = theme;

    notifyListeners();
  }
}