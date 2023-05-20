import 'package:flutter/material.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/UI/My_theme_Data.dart';
import 'package:provider/provider.dart';

import 'ThemeBottomSheet.dart';

class SettingsTab extends StatelessWidget {
  static const routeName = 'Settings Tab';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Text("Theme" ,
            style: Theme.of(context).textTheme.headline5,
          ),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).accentColor
                )
              ),
                child: Text(provider.isDarkEnabled()?'Dark': 'Light',
              style: Theme.of(context).textTheme.bodyText2,
            )
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context){
      showModalBottomSheet(context: context,
          builder: (buildContext)=>ThemeBottomSheet(),
      );
}
}
