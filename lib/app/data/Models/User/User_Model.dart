// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.data,
  });

  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
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
    required this.phone,
    required this.role,
    required this.isActive,
    required this.email,
    required this.countryId,
    required this.countryName,
    required this.cityId,
    required this.cityName,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
    this.password,
    required this.token,
  });

  int id;
  String name;
  String phone;
  int role;
  int isActive;
  String email;
  int countryId;
  String countryName;
  int cityId;
  String cityName;
  dynamic emailVerifiedAt;
  DateTime? phoneVerifiedAt;
  String? password;
  String token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        role: json["role"],
        isActive: json["is_active"],
        email: json["email"],
        countryId: json["country_id"],
        countryName: json["country_name"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        emailVerifiedAt: json["email_verified_at"],
        phoneVerifiedAt: DateTime.parse(json["phone_verified_at"]),
        password: json["password"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "role": role,
        "is_active": isActive,
        "email": email,
        "country_id": countryId,
        "country_name": countryName,
        "city_id": cityId,
        "city_name": cityName,
        "email_verified_at": emailVerifiedAt,
        "phone_verified_at": phoneVerifiedAt!.toIso8601String(),
        "password": password,
        "token": token,
      };
}
