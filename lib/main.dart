import 'package:flutter/material.dart';
import 'package:islami_app_1/hadith/HadithDetailsScreen.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'HomePage.dart';
import 'hadith/HadithScreen.dart';
import 'quran/suraDetailsScreen.dart';

class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedItemColor = Color.fromRGBO(255, 255, 255, 1.0);
  static final unSelectedItemColor = Color.fromRGBO(0, 0, 0, 1.0);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: MyThemeData.primaryColor,
            selectedIconTheme: IconThemeData(
              color: MyThemeData.selectedItemColor,
              size: 24,
            ),
            unselectedIconTheme: IconThemeData(
              color: MyThemeData.unSelectedItemColor,
              size: 24,
            )),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      routes: {
        HomePage.routeName: (buildContext) => HomePage(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
        HadithDetailsScreen.routeName: (buildContext) => HadithDetailsScreen(),
      },
      initialRoute: HomePage.routeName,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocaliztions.delegate,
      // ],
      // supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
    );
  }
}
