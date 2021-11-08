import 'package:flutter/material.dart';
import 'package:islami_app_1/hadith/HadithDetailsScreen.dart';
import 'package:islami_app_1/hadith/hadith_screen.dart';

class HadithNameWidget extends StatelessWidget {
  Hadith item;
  HadithNameWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,
            arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          item.title,
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
