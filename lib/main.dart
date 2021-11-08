import 'package:flutter/material.dart';
import 'package:islami_app_1/hadith/HadithDetailsScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_1/provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';
import 'HomePage.dart';
import 'hadith/hadith_screen.dart';
import 'quran/suraDetailsScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedItemColor = Color.fromRGBO(255, 255, 255, 1.0);
  static final unSelectedItemColor = Color.fromRGBO(0, 0, 0, 1.0);
  static final colorBalck = Color.fromRGBO(0, 0, 0, 1.0);
  static final colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: MyThemeData.colorBalck,
        fontSize: 24,
      ),
      iconTheme: IconThemeData(
        color: MyThemeData.colorBalck,
      ),
      centerTitle: true,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: MyThemeData.colorBalck,
        ),
      ),
      primaryColor: MyThemeData.primaryColor);
}

void main() {
  runApp(ChangeNotifierProvider<AppConfigProvider>(
      create: (buildContext) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.appTheme,
      routes: {
        HomePage.routeName: (buildContext) => HomePage(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
        HadithDetailsScreen.routeName: (buildContext) => HadithDetailsScreen(),
      },
      initialRoute: HomePage.routeName,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}
