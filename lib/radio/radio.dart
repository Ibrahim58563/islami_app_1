import 'package:flutter/material.dart';
import 'package:islami_app_1/main.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: AssetImage(
                  'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png')),
          Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: MyThemeData.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
