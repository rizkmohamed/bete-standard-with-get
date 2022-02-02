// To parse this JSON data, do
//
//     final aryeaList = aryeaListFromJson(jsonString);

import 'dart:convert';

AryeaList aryeaListFromJson(String str) => AryeaList.fromJson(json.decode(str));

String aryeaListToJson(AryeaList data) => json.encode(data.toJson());

class AryeaList {
  AryeaList({
    required this.data,
  });

  List<Arya> data;

  factory AryeaList.fromJson(Map<String, dynamic> json) => AryeaList(
        data: List<Arya>.from(json["data"].map((x) => Arya.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Arya {
  Arya({
    required this.id,
    required this.name,
    required this.citiesCount,
    required this.cities,
  });

  int id;
  String name;
  int citiesCount;
  List<City> cities;

  factory Arya.fromJson(Map<String, dynamic> json) => Arya(
        id: json["id"],
        name: json["name"],
        citiesCount: json["cities_count"],
        cities: List<City>.from(json["cities"].map((x) => City.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cities_count": citiesCount,
        "cities": List<dynamic>.from(cities.map((x) => x.toJson())),
      };
}

class City {
  City({
    required this.id,
    required this.name,
    required this.countryId,
    required this.countryName,
  });

  int id;
  String name;
  int countryId;
  String countryName;

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
        countryId: json["country_id"],
        countryName: json["country_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country_id": countryId,
        "country_name": countryName,
      };
}
