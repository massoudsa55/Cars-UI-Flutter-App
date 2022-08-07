import 'package:flutter/material.dart';

import '../constants.dart';

class Categorries extends StatefulWidget {
  const Categorries({super.key});

  @override
  State<Categorries> createState() => _CategorriesState();
}

class _CategorriesState extends State<Categorries> {
  List<String> categories = ["Home", "Invoice", "Notification", "My Profile"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: cDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.46,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: cDefaultPadding),
            child: buildCategory((categories.length - 1) - index),
          ),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: cDefaultPadding),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                categories[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          if (selectedIndex == index)
            Padding(
              padding: const EdgeInsets.only(left: cDefaultPadding / 2),
              child: Container(
                height: 10,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: cPrimaryLightColor,
                ),
              ),
            ),
          const Spacer(),
          if (selectedIndex == index)
            Container(
              width: 30,
              height: 80,
              decoration: const BoxDecoration(
                color: cSecondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
