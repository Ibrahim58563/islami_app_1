import 'package:flutter/material.dart';

import 'suraDetailsScreen.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
  int suraIndex;
  SuraNameItem(this.suraName, this.suraIndex) {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(suraName, suraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '${suraName}',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
