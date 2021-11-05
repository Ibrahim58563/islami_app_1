import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String text;
  int index;
  VerseWidget(this.text, this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Container(
        child: Text(
          text + '${index + 1}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
