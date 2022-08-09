import 'package:cars_ui_flutter_app/constants.dart';
import 'package:cars_ui_flutter_app/screens/left_navigation_bar.dart';
import 'package:cars_ui_flutter_app/screens/title_categories.dart';
import 'package:flutter/material.dart';

import '../model/cars.dart';
import 'cart_cars.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: cPrimaryColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const VerticallyNavigationBar(),
          const LeftNavigationBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo principal
              Image.asset(
                "assets/icons/logo.png",
                width: size.width * 0.4,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: cDefaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title of country
                  SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.04,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(),
                      child: TitleCategory(),
                    ),
                  ),
                  // Title of items
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: cDefaultPadding, horizontal: cDefaultPadding),
                    child: Text(
                      "NEAR YOU",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  // Card cars
                  SizedBox(
                    height: size.height * 0.45,
                    width: size.width * 0.8,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: List.generate(getCars.length,
                              (index) => CardCars(car: getCars[index])),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
