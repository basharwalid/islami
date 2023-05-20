import 'package:flutter/material.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/UI/Home/hadeth/hadethTab.dart';
import 'package:islami/UI/Home/quran/quranTab.dart';
import 'package:islami/UI/Home/radio/radioTab.dart';
import 'package:islami/UI/Home/tasbeh/tasbehTab.dart';
import 'package:provider/provider.dart';

import '../My_theme_Data.dart';
import 'Settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedTabIndex=0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light ? "assets/images/main_background.png" : "assets/images/darkThemeBackground.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: SelectedTabIndex,
          onTap: (index){

            setState(() {
              SelectedTabIndex = index;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          items:  [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: "القرآن"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: "الأحاديث"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "التسبيح"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: "الراديو"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: "الاعدادات"),
          ],
        ),
        body: tabs[SelectedTabIndex],
      ),
    );
  }
  List<Widget> tabs = [
      quranTab(),
    hadethTab(),
    tasbehTab(),
    radioTab(),
    SettingsTab()
  ];
}
