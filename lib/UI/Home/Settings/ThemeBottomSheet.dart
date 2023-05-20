import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/ThemeProvider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          InkWell(
            onTap: (){
              provider.enableLightMode();
            },
            child: provider.isDarkEnabled()? getUnSelectedWidget("Light", context):
                getSelectedWidget("Light", context)
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              provider.enableDarkMode();
            },
            child: provider.isDarkEnabled()? getSelectedWidget("Dark", context):
                getUnSelectedWidget("Dark", context)
          ),
        ],
      ),
    );
  }
  Widget getSelectedWidget(String title , BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(Icons.check , color: Theme.of(context).accentColor,),
      ],
    );
  }
  Widget getUnSelectedWidget(String title , BuildContext context){
    return  Text(title,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
