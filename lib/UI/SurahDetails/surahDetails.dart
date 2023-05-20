import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/SurahDetails/VerseContent.dart';
import 'package:provider/provider.dart';

import '../../Providers/ThemeProvider.dart';
import '../My_theme_Data.dart';

class surahDetails extends StatefulWidget {
  static const String routeName = "Surah Details Screen";

  @override
  State<surahDetails> createState() => _surahDetailsState();
}

class _surahDetailsState extends State<surahDetails> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    SuraDetailsScreenArguments suraDetailsScreenArguments =
        ModalRoute.of(context)!.settings.arguments
            as SuraDetailsScreenArguments;
    if (chapterContent.isEmpty) {
      readfiles(suraDetailsScreenArguments.index);
    }
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light ? "assets/images/main_background.png" : "assets/images/darkThemeBackground.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(suraDetailsScreenArguments.title),
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
                  child: chapterContent.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.separated(
                          itemBuilder: (buildContext, index) {
                            return VerseContent(chapterContent[index]);
                          },
                          itemCount: chapterContent.length,
                          separatorBuilder: (buildContext, index) {
                            return Container(
                              color: Theme.of(context).primaryColor,
                              height: 1,
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 12),
                              // padding: const EdgeInsets.symmetric(vertical: 12),
                              // margin: EdgeInsets.symmetric(horizontal: 64),
                            );
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void readfiles(int chapterindex) async {
    await Future.delayed(const Duration(seconds: 1));
    String text =
        await rootBundle.loadString("assets/files/${chapterindex + 1}.txt");
    chapterContent = text.split("\n");
    setState(() {});
  }
}

class SuraDetailsScreenArguments {
  String title;
  int index;
  SuraDetailsScreenArguments(this.title, this.index);
}
