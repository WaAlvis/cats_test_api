// To parse this JSON data, do
//
//     final catsResponse = catsResponseFromMap(jsonString);

import 'dart:convert';

import 'package:test_cats/models/image.dart';

class CatsResponse {
  CatsResponse({
    required this.name,
    required this.origin,
    required this.affectionLevel,
    required this.intelligence,
    this.image,
  });

  String name;
  String origin;
  int affectionLevel;
  int intelligence;
  Image? image;


  factory CatsResponse.fromJson(String str) => CatsResponse.fromMap(json.decode(str));


  factory CatsResponse.fromMap(Map<String, dynamic> json) => CatsResponse(
    name: json["name"],
    origin: json["origin"],
    affectionLevel: json["affection_level"],
    intelligence: json["intelligence"],
    image: json["image"] == null ? null : Image.fromMap(json["image"]),
  );

}


