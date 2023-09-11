import 'package:shared_preferences/shared_preferences.dart';

class DarkThemPrefs {
  static const THEM_STATUS = "THEMSTATUS";
  setDarkThem(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEM_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEM_STATUS) ?? false;
  }
}
