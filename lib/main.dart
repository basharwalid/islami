import 'package:flutter/material.dart';
import 'package:islami/UI/Home/HomeScreen.dart';
import 'package:islami/UI/Home/hadethContent/haddethDetailsScreen.dart';
// import 'package:islami/UI/Home/hadethContent/hadethContentScreen.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';
import 'package:islami/UI/splash/splashScreen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: splashScreen.routeName,
      routes: {
          splashScreen.routeName: (_) => splashScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          surahDetails.routeName: (_) => surahDetails(),
          hadethDetailsScreen.routeName:(_) => hadethDetailsScreen(),

      },
      theme: ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xffB7935F),
        ),
        primaryColor: const Color(0xffB7935F),
        appBarTheme:const AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontSize: 32
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white
        )
      ),
    );
  }
}
