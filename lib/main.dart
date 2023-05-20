import 'package:flutter/material.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/UI/Home/HomeScreen.dart';
import 'package:islami/UI/Home/Settings/settings.dart';
import 'package:islami/UI/Home/hadethContent/haddethDetailsScreen.dart';
import 'package:islami/UI/My_theme_Data.dart';
// import 'package:islami/UI/Home/hadethContent/hadethContentScreen.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';
import 'package:islami/UI/splash/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext) => ThemeProvider(),
      child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (_) => splashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        surahDetails.routeName: (_) => surahDetails(),
        hadethDetailsScreen.routeName: (_) => hadethDetailsScreen(),
        SettingsTab.routeName: (_) => SettingsTab()
      },
      theme: MythemeData.lightTheme,
      darkTheme: MythemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
