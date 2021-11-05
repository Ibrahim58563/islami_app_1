import 'package:flutter/material.dart';
import '../main.dart';

class HadithScreen extends StatelessWidget {
  static const String routeName = 'home';
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Image(
                  image: AssetImage(
                      'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png')),
              Container(
                height: 3,
                width: double.infinity,
                color: MyThemeData.primaryColor,
              ),
              Text(
                'الأحاديث',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Container(
                height: 3,
                width: double.infinity,
                color: MyThemeData.primaryColor,
              ),
              // ListView.separated(
              //     itemBuilder: (context,index)=> ,
              //     separatorBuilder: (context,index)=>Container(
              //       height: 1,
              //       color:myThemeColor.primaryColor,
              //       width:double.infinity,
              //     ),
              //     itemCount: 0)
            ],
          ),
        ),
      ],
    );
  }
}

// Column(
// children: [
// Image(
// image: AssetImage(
// 'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png')),
// Container(
// height: 1,
// width: double.infinity,
// color: MyThemeData.primaryColor,
// ),
// Text(
// 'الأحاديث',
// style: TextStyle(
// fontSize: 30,
// ),
// ),
// Container(
// height: 1,
// width: double.infinity,
// color: MyThemeData.primaryColor,
// ),
// // ListView.separated(
// //     itemBuilder: (context,index)=> ,
// //     separatorBuilder: (context,index)=>Container(
// //       height: 1,
// //       color:myThemeColor.primaryColor,
// //       width:double.infinity,
// //     ),
// //     itemCount: 0)
// ],
// ),
