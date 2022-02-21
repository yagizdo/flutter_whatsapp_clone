import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_clone/Providers/shared_preferences_helper.dart';

class ThemeProvider with ChangeNotifier {
  SharedPreferences? sharedPreferences;

  final darkTheme = ThemeData(
    cardColor: HexColor('#1c1c1e'),
    //Text Button
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: Colors.blue,
    )),
    // Scaffold Background
    scaffoldBackgroundColor: HexColor('#1B262C'),
    brightness: Brightness.dark,
    // Appbar
    appBarTheme: AppBarTheme(
      elevation: 0,
      shadowColor: Colors.grey,
      color: HexColor('#1B262C'),
    ),
    // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.black,
    )),
  );

  final lightTheme = ThemeData(
      primaryColor: Colors.white,
      navigationBarTheme:
          NavigationBarThemeData(backgroundColor: HexColor('#EFEFF4')),
      appBarTheme: AppBarTheme(
          elevation: 0,
          color: HexColor('#EFEFF4'),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 16)),
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: Colors.blue,
      )),
      colorScheme:
          ColorScheme.light(primary: Colors.black, secondary: Colors.black));

  ThemeData? _themeData;
  ThemeData? getTheme() => _themeData;

// methods for shared preferences
  void initSharedPreferences() async {
    // sharedPreferences = await SharedPreferences.getInstance();
    await SharedPreferencesHelper.init();
    sharedPreferences = SharedPreferencesHelper.instance;
    notifyListeners();
  }

  static void saveData(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else {
      print("Invalid Type");
    }
  }

  static Future<dynamic> readData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    dynamic obj = prefs.get(key);
    return obj;
  }

  static Future<bool> deleteData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  ThemeProvider() {
    readData('themeMode').then((value) {
      print('Selected Theme Data from Local Storage : ${value.toString()}');
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        print('setting dark theme');
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    saveData('themeMode', 'light');
    notifyListeners();
  }
}
