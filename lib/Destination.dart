// To parse this JSON data, do
//
//     final destination = destinationFromJson(jsonString);

import 'dart:convert';

List<Destination> destinationFromJson(String str) => List<Destination>.from(
    json.decode(str).map((x) => Destination.fromJson(x)));

String destinationToJson(List<Destination> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Destination {
  Destination({
    this.name,
    this.category,
    this.address,
    this.pic,
    this.blurb,
    this.image,
  });

  String name;
  Category category;
  String address;
  String pic;
  String blurb;
  String image;

  factory Destination.fromJson(Map<String, dynamic> json) => Destination(
        name: json["name"],
        category: categoryValues.map[json["category"]],
        address: json["address"],
        pic: json["pic"] == null ? null : json["pic"],
        blurb: json["blurb"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "category": categoryValues.reverse[category],
        "address": address,
        "pic": pic == null ? null : pic,
        "blurb": blurb,
        "image": image == null ? null : image,
      };
}

enum Category { GREENSPACE, SMALL_BUSINESS }

final categoryValues = EnumValues({
  "Greenspace": Category.GREENSPACE,
  "Small Business": Category.SMALL_BUSINESS
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
