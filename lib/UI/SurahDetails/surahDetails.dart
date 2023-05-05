import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/SurahDetails/VerseContent.dart';

class surahDetails extends StatefulWidget {
  static const String routeName = "Surah Details Screen";

  @override
  State<surahDetails> createState() => _surahDetailsState();
}

class _surahDetailsState extends State<surahDetails> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArguments suraDetailsScreenArguments =
        ModalRoute.of(context)!.settings.arguments
            as SuraDetailsScreenArguments;
    if (chapterContent.isEmpty) {
      readfiles(suraDetailsScreenArguments.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
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
                  color: Colors.white,
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
    await Future.delayed(const Duration(seconds: 2));
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
