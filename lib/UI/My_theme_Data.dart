import 'package:flutter/material.dart';

class MythemeData {
  static Color lightprimarycolor = Color(0xffB7935F);
  static Color darkprimarycolor = Color(0xff141a2e);
  static Color lightMainTextColor = Color(0xff242424);
  static Color darkMainTextColor = Color(0xfff8f8f8);
  static Color darkAccentColor = Color(0xffFACC1D);
  static var lightTheme = ThemeData(
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: lightprimarycolor),
      primaryColor: lightprimarycolor,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.black),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: lightMainTextColor, fontSize: 32)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightprimarycolor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          headline3: TextStyle(color: lightMainTextColor, fontSize: 32),
          headline6: TextStyle(
            color: lightMainTextColor,
            fontSize: 24,
          ),
          bodyText1: TextStyle(color: lightMainTextColor, fontSize: 24),
          bodyText2: TextStyle(color: lightMainTextColor, fontSize: 20)));
  static var darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkprimarycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )
        )
      ),
      progressIndicatorTheme:
      ProgressIndicatorThemeData(color: darkAccentColor),
      primaryColor: darkprimarycolor,
      accentColor: darkAccentColor,
      cardColor: darkprimarycolor,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: Colors.white),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: darkMainTextColor, fontSize: 32)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkprimarycolor,
          selectedItemColor: darkAccentColor,
          unselectedItemColor: Colors.white
      ),
      textTheme: TextTheme(
          headline3: TextStyle(color: darkMainTextColor, fontSize: 32),
          headline5: TextStyle(
            color: darkMainTextColor,
            fontSize: 24,
          ),
          bodyText1: TextStyle(color: darkMainTextColor, fontSize: 24),
          bodyText2: TextStyle(color: darkMainTextColor, fontSize: 20))
  );
}
