import 'package:flutter/material.dart';
import 'package:islami_app_1/provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of(context)<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.cahngeLanguage('en');
              },
              child: provider.changeLanguage == 'en'
                  ? getSelectedWidget(context, 'English')
                  : getUnselectedWidget('English')),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeLagnuage('ar');
            },
            child: provider.appLanguage == 'ar'
                ? getSelectedWidget(context, 'العربية')
                : getUnselectedWidget('English'),
          ),
        ],
      ),
    );
  }

  Widget getSelectedWidget(context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Icon(Icons.check)
        ],
      ),
    );
  }

  Widget getUnselectedWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Icon(Icons.check)
        ],
      ),
    );
  }
}
