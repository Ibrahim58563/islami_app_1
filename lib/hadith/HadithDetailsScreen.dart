import 'package:flutter/material.dart';
import 'package:islami_app_1/hadith/HadithScreen.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadith-details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  24,
                ),
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(
                vertical: 44,
                horizontal: 24,
              ),
              child: SingleChildScrollView(
                child: Text(
                  args.content,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
