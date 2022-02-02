// To parse this JSON data, do
//
//     final categorieProduct = categorieProductFromJson(jsonString);

import 'dart:convert';

import 'package:prod_family/app/data/Models/Product/Product/Product.dart';

CategorieProduct categorieProductFromJson(String str) =>
    CategorieProduct.fromJson(json.decode(str));

String categorieProductToJson(CategorieProduct data) =>
    json.encode(data.toJson());

class CategorieProduct {
  CategorieProduct({
    required this.data,
  });

  Data data;

  factory CategorieProduct.fromJson(Map<String, dynamic> json) =>
      CategorieProduct(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.description,
    required this.products,
  });

  int id;
  String name;
  String description;
  List<Product> products;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}
