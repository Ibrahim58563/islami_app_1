import 'package:flutter/material.dart';
import 'package:islami_app_1/Settings_Tab/SettingsTab.dart';
import '../main.dart';
import 'hadith/hadith_screen.dart';
import 'quran/quran.dart';
import 'radio/radio.dart';
import 'sebha/sebha.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/bg3.png'),
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              currentIndex: currentPage,
              selectedItemColor: MyThemeData.selectedItemColor,
              unselectedItemColor: MyThemeData.unSelectedItemColor,
              backgroundColor: MyThemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/radio.png',
                      width: 48,
                    ),
                    label: ('radio')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/sebha_blue.png',
                      width: 48,
                    ),
                    label: ('sebha')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/Group 6.png',
                      width: 48,
                    ),
                    label: ('hadith')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/quran.png',
                      width: 48,
                    ),
                    label: ('quran')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: ('quran')),
              ],
            ),
          ),
          appBar: AppBar(
            title: Center(
              child: Text(
                'Islami',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
          ),
          body: Container(child: views[currentPage]),
        ),
      ],
    );
  }

  List<Widget> views = [
    RadioTab(),
    SebhaTab(),
    HadithScreen(),
    QuranTab(),
    SettingsTab()
  ];
}

class HadithList {}
//  Widget getCurrentPage() {
//   if (currentPage == 0) {
//     return RadioTab();
//   } else if (currentPage == 1) {
//     return SebhaTab();
//   } else if (currentPage == 2) {
//     return HadithScreen();
//   } else if (currentPage == 3) {
//     return QuranTab();
//   }
// }
