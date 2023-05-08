import 'package:flutter/material.dart';

import '../hadeth/hadethData.dart';

class hadethDetailsScreen extends StatelessWidget {
  static const String routeName="hadeth details";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth ;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
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
                  color: Colors.white,
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
