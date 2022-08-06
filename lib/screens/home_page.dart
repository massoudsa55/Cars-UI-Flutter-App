import 'package:cars_ui_flutter_app/constants.dart';
import 'package:cars_ui_flutter_app/screens/categorries.dart';
import 'package:cars_ui_flutter_app/screens/title_categories.dart';
import 'package:flutter/material.dart';

import 'vertically_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> categories = ["HOT", "AMERICAN", "FRENCH", "MEXICO"];
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: cPrimaryColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticallyNavigationBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/logo.png",
                  width: size.width * 0.4,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: cDefaultPadding),
                //const TitleCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
