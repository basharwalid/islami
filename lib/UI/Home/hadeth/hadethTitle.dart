import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadethContent/haddethDetailsScreen.dart';
// import 'package:islami/UI/Home/hadethContent/hadethContentScreen.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';

import 'hadethData.dart';

class hadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;
  hadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadethDetailsScreen.routeName , arguments: hadeth);
      },

      child: Container(
        alignment: Alignment.center,
        child: Text(hadeth.title ,
          style: Theme.of(context).textTheme.bodyText1
        ),
      ),
    );
  }
}
