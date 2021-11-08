import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'HadithName.dart';

class HadithScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    if (allHadith.isEmpty) loadHadithFiles();

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
              Expanded(
                  child: allHadith.isEmpty
                      ? CircularProgressIndicator()
                      : Center(
                          child: ListView.separated(
                              itemBuilder: (buildContext, index) =>
                                  Text(allHadith[index].title),
                              separatorBuilder: (context, index) => Container(
                                    height: 1,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: double.infinity,
                                    color: MyThemeData.primaryColor,
                                  ),
                              itemCount: allHadith.length),
                        )),
            ],
          ),
        ),
      ],
    );
  }

  void loadHadithFiles() async {
    for (int i = 1; i <= 50; i++) {
      String fileContent =
          await rootBundle.loadString('assets/hadithnames/h$i.txt');
      print(fileContent);
      List<String> lines = fileContent.split('\n');
      String title = lines[0];
      String content = '';
      for (int j = 1; j < lines.length; j++) {
        content += lines[j];
      }
      var h = Hadith(title, content);
      allHadith.add(h);
    }
    setState(() {});
  }

  List<Hadith> allHadith = [];
}

class Hadith {
  String title;
  String content;
  Hadith(this.title, this.content);
}
