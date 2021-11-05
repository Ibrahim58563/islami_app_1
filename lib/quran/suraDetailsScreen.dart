import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_1/quran/VerseWidget.dart';

import '../main.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> ayat = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) readSura(args.suraIndex);
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/bg3.png'),
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "${args.suraName}",
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
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 48,
            ),
            padding: EdgeInsets.all(10),
            child: ayat.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return VerseWidget(ayat[index], index);
                    },
                    itemCount: ayat.length,
                    separatorBuilder: (buildContext, index) => Container(
                      height: 1,
                      width: double.infinity,
                      color: MyThemeData.primaryColor,
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  void readSura(int index) async {
    String fileName = "assets/files/${index + 1}.txt";
    String fileContent = await rootBundle.loadString(fileName);
    print(fileContent);
    List<String> verses = fileContent.split('\n');
    ayat = verses;
    setState(() {});
  }

  void loadSuraDetails(int index) async {
    print(index);
    // String fileContent =
    //     await rootBundle.loadString("assets/suras/${index + 1}.txt");
    // print(fileContent);
  }
}

class SuraDetailsArgs {
  String suraName;
  int suraIndex;
  SuraDetailsArgs(this.suraName, this.suraIndex) {}
}
