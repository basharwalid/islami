import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/ThemeProvider.dart';
import '../../My_theme_Data.dart';
import '../hadeth/hadethData.dart';

class hadethDetailsScreen extends StatelessWidget {
  static const String routeName="hadeth details";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth ;
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light ? "assets/images/main_background.png" : "assets/images/darkThemeBackground.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12 , vertical: 35),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:SingleChildScrollView(
                      child: Text(args.Content ,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
