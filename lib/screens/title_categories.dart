import 'package:cars_ui_flutter_app/constants.dart';
import 'package:flutter/material.dart';

class TitleCategory extends StatefulWidget {
  const TitleCategory({super.key});

  @override
  State<TitleCategory> createState() => _TitleCategoryState();
}

class _TitleCategoryState extends State<TitleCategory> {
  List<String> categories = ["HOT", "AMERICAN", "FRENCH", "MEXICO"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: cDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: cDefaultPadding / 4),
              height: 2,
              width: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
