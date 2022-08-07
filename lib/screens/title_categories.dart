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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => buildCategory(index),
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
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (selectedIndex == index)
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  color: cPrimaryLightColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 60,
                      offset: const Offset(0, 10),
                      color: cPrimaryLightColor.withOpacity(0.7),
                    ),
                  ],
                ),
              ),
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
