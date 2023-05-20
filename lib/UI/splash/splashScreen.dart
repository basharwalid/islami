import 'package:flutter/material.dart';
import 'package:islami/UI/Home/HomeScreen.dart';
import 'package:islami/UI/My_theme_Data.dart';
import 'package:provider/provider.dart';

import '../../Providers/ThemeProvider.dart';

class splashScreen extends StatelessWidget {
  static const String routeName="Splash screen";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    Future.delayed(const Duration(seconds: 2),
    ()
    {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
      child: Image.asset(provider.themeMode == ThemeMode.light ? "assets/images/lightsplashScreen.png" : "assets/images/dark_splash_screen.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    )
    );
  }
}
