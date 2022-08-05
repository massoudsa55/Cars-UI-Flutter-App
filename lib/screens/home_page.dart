import 'package:cars_ui_flutter_app/constants.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: ConvexAppBar(
              //backgroundColor: cPrimaryLightColor,
              //cornerRadius: 50,
              style: TabStyle.titled,
              //curveSize: 150,
              items: const [
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.map, title: 'Discovery'),
                TabItem(icon: Icons.add, title: 'Add'),
                TabItem(icon: Icons.message, title: 'Message'),
                TabItem(icon: Icons.people, title: 'Profile'),
              ],
              initialActiveIndex: 2, //optional, default as 0
              // ignore: avoid_print
              onTap: (int i) => print('index clicked = $i'),
            ),
          ),
        ],
      ),
    );
  }
}
