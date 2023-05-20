import 'package:flutter/material.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';

class verseName extends StatelessWidget {
  String title;
  int index;
  verseName(this.title ,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.pushNamed(context, surahDetails.routeName , arguments: SuraDetailsScreenArguments(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(title ,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
