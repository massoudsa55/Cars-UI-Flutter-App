class Car {
  final String id;
  final String title;
  final String imgURL;
  final int price;
  final String description;

  Car({
    required this.id,
    required this.title,
    required this.imgURL,
    required this.price,
    required this.description,
  });
}

List<Car> getCars = [
  Car(
    id: '1',
    title: "Beaufort",
    imgURL: "assets/images/car_1.png",
    price: 15000,
    description:
        "Beaufort was a German manufacturer of automobiles solely for the British market. It existed from 1901 to 1906 and was established with English capital",
  ),
  Car(
    id: '1',
    title: "Ford Thunderbird",
    imgURL: "assets/images/car_4.png",
    price: 17000,
    description:
        "The Ford Thunderbird (colloquially called the T-Bird) is a personal luxury car produced by Ford from model years 1955 until 1997 and 2002 until 2005 across 11 distinct generations",
  ),
  Car(
    id: '1',
    title: "Beaufort",
    imgURL: "assets/images/car_1.png",
    price: 15000,
    description:
        "Beaufort was a German manufacturer of automobiles solely for the British market. It existed from 1901 to 1906 and was established with English capital",
  ),
  Car(
    id: '1',
    title: "Ford Thunderbird",
    imgURL: "assets/images/car_4.png",
    price: 17000,
    description:
        "The Ford Thunderbird (colloquially called the T-Bird) is a personal luxury car produced by Ford from model years 1955 until 1997 and 2002 until 2005 across 11 distinct generations",
  ),
];
