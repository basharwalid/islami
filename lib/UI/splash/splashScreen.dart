import 'package:flutter/material.dart';
import 'package:islami/UI/Home/HomeScreen.dart';

class splashScreen extends StatelessWidget {
  static const String routeName="Splash screen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),
    ()
    {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xffD5D3D3)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(),
            Image.asset("assets/images/splashLogo.png"),
            Image.asset("assets/images/splashlogo2.png"),

          ],
        ),
      )
    );
  }
}
