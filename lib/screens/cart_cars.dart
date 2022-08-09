import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/cars.dart';

class CardCars extends StatelessWidget {
  const CardCars({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: cDefaultPadding, vertical: cDefaultPadding / 2),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          // SiedBox of Items of car
          SizedBox(
            height: size.height * 0.2,
            width: size.width * 0.7,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: cThirtyColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
                    offset: const Offset(0, 10),
                    color: cPrimaryColor.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ),
          // Image of car
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              car.imgURL,
              height: size.height * 0.1,
            ),
          ),
          // Title of car and description
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  car.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: cDefaultPadding / 2,
                    bottom: cDefaultPadding,
                  ),
                  child: Text(
                    car.description,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          // favorate items of
          Positioned(
            top: 0,
            right: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.1,
                height: size.height * 0.06,
                decoration: const BoxDecoration(
                  color: cSecondaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
