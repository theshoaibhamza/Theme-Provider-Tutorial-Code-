import 'package:flutter/material.dart';
import 'package:mycofeeshop/Themes/Theme.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;

  //ThemeData get themeData => _themeData;

  ThemeData getThemeData() {
    return _themeData;
  }

  void setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void changeTheme() {
    if (_themeData == lightTheme) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    notifyListeners(); // Notify listeners after changing the theme
  }
}
