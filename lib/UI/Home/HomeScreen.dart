import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadeth/hadethTab.dart';
import 'package:islami/UI/Home/quran/quranTab.dart';
import 'package:islami/UI/Home/radio/radioTab.dart';
import 'package:islami/UI/Home/tasbeh/tasbehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedTabIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
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
    radioTab()
  ];
}
