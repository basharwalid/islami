import 'package:flutter/material.dart';
import 'package:islami/UI/SurahDetails/surahDetails.dart';

import 'hadethData.dart';

class hadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;
  hadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(hadeth.title ,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
