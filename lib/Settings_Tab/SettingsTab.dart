import 'package:flutter/material.dart';
import 'package:islami_app_1/Settings_Tab/LanguageSheet.dart';
import 'package:islami_app_1/Settings_Tab/Theme.dart';
import 'package:islami_app_1/provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Language',
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.getSelectedLanguageText()),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Light',
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showBottomSheet(
        context: context, builder: (buildContext) => LanguageBottomSheet());
  }

  void showThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
