import 'package:flutter/material.dart';

import '../constants.dart';
import 'categorries.dart';

class VerticallyNavigationBar extends StatelessWidget {
  const VerticallyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.17,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: cSecondaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/menu.png"),
          ),
          const SizedBox(height: 30),
          Image.asset(
            "assets/icons/wissam.png",
            height: size.width * 0.1,
          ),
          const Categorries(),
          //const Spacer(),
          Image.asset(
            "assets/icons/bag.png",
            height: size.width * 0.1,
          ),
        ],
      ),
    );
  }
}
