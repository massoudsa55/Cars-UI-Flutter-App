import 'package:cars_ui_flutter_app/constants.dart';
import 'package:flutter/material.dart';

import 'categorries.dart';

class LeftNavigationBar extends StatelessWidget {
  const LeftNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.2,
      height: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: size.width * 0.16,
            height: double.infinity,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                color: cSecondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(cDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/menu.png"),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Image.asset(
                      "assets/icons/wissam.png",
                      height: size.width * 0.08,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.center,
              child: Categorries(),
            ),
          ),
          Positioned(
            bottom: size.height * 0.05,
            left: (size.width * 0.17) / 3.5,
            child: Image.asset(
              "assets/icons/bag.png",
              height: size.width * 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
