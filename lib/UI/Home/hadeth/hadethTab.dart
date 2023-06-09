import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/Home/hadeth/hadethData.dart';
import 'package:islami/UI/Home/hadeth/hadethTitle.dart';
// import 'package:islami/UI/Home/hadethContent/hadetContentWidget.dart';
// import 'package:islami/UI/Home/hadethContent/hadethContentScreen.dart';

class hadethTab extends StatefulWidget {
  @override
  State<hadethTab> createState() => _hadethTabState();
}

class _hadethTabState extends State<hadethTab> {
  List<Hadeth> allhadethList = [];

  @override
  Widget build(BuildContext context) {
    if(allhadethList.isEmpty){
      readHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_header_image.png")),
        Container(
          width: double.infinity,
          height: 3,
          color: Theme.of(context).accentColor,
          margin: const EdgeInsets.all(10),
        ),
         Text("الأحاديث" ,
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Theme.of(context).accentColor,
          margin: const EdgeInsets.all(10),

        ),
        Expanded(
            flex: 3,
            child: Container(
              child: allhadethList.isEmpty?const Center(child: CircularProgressIndicator(),):
                ListView.separated(itemBuilder: (buildContext , index)
                  {
                    return hadethTitleWidget(allhadethList[index]);
                  },
                  itemCount: allhadethList.length,
                  separatorBuilder:(buildContext , index)
                  {
                    return Container(
                      color: Theme.of(context).accentColor,
                      width: double.infinity,
                      height: 2,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                    );
                  },
                )
              ,
            ))
      ],
    );
  }

  void readHadethFile()async{
    List<Hadeth> hadethList = [];
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> SplittedContent = fileContent.split("#");
    for(int i =0; i<SplittedContent.length ; i++){
      String SingleHadethContent = SplittedContent[i];
      List<String> lines= SingleHadethContent.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
      allhadethList = hadethList;
      setState(() {

      });
    }
  }
}
