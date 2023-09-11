import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final appThemeStateNotifier =
    ChangeNotifierProvider(create: (ref) => AppThemeState());

class AppThemeState extends ChangeNotifier {
  var isDarkModeEnapled = false;
  void setLightTheme() {
    isDarkModeEnapled = false;
    notifyListeners();
  }

  void setDarkTheme() {
    isDarkModeEnapled = true;
    notifyListeners();
  }
}
