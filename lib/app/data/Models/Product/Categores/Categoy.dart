// To parse this JSON data, do
//
//     final categores = categoresFromJson(jsonString);

import 'dart:convert';

Categories categoresFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoresToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    required this.data,
  });

  List<Categorie> data;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        data: List<Categorie>.from(
            json["data"].map((x) => Categorie.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Categorie {
  Categorie({
    required this.id,
    required this.name,
    required this.description,
  });

  int id;
  String name;
  String description;

  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}
