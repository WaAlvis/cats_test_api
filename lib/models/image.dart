import 'dart:convert';

class Image {
  Image({
    required this.id,
    required this.width,
    required this.height,
    this.url,
  });

  String id;
  int width;
  int height;
  String? url;

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  factory Image.fromMap(Map<String, dynamic> json) => Image(
    id: json["id"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
  );

}
