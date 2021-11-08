import 'package:flutter/material.dart';
import 'package:islami_app_1/provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.isLightMode()
                  ? getSelectedWidget(context, 'Light')
                  : getUnselectedWidget('Light')),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: !provider.isLightMode()
                ? getSelectedWidget(context, 'Dark')
                : getUnselectedWidget('Dark'),
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
