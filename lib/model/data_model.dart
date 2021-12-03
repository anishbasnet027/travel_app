import 'dart:html';

class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String desription;
  String location;

  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.desription,
    required this.location,
  });
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        stars: json["stars"],
        desription: json["desription"],
        location: json["location"]);
  }
}
