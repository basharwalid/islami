import 'package:flutter/material.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';

class VerseContent extends StatelessWidget {
  String content;
  VerseContent(this.content);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(content ,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
