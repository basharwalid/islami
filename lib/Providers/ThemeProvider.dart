import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
    ThemeMode themeMode = ThemeMode.light;

    void enableDarkMode(){
      themeMode = ThemeMode.dark;
      notifyListeners();
    }
    void enableLightMode(){
      themeMode = ThemeMode.light;
      notifyListeners();
    }

    bool isDarkEnabled(){
      return themeMode == ThemeMode.dark;
    }
}