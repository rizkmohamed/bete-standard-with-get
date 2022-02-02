import 'package:http/http.dart' as http;
import 'package:prod_family/app/Shared/Const.dart';
import 'dart:convert';

import 'package:prod_family/app/data/Models/User/User_Model.dart';

Future<User> Login(String phone, String password) async {
  final Map<String, dynamic> loginData = {
    'phone': phone,
    'password': password,
  };
  final http.Response response = await http.post(
    Uri.parse('${KbasUrl}login'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // 'sw-context-token': '',
      //'sw-access-key': Kaccesskey
    },
    body: jsonEncode(loginData),
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.body;

    // then parse the JSON.
//TODO: remove this line
    print(jsonDecode(response.statusCode.toString()));
    print('login Success from api');

    return userFromJson(jsonString);

    // then throw an exception.

    //throw Exception('......');
  }
//TODO: remove this line
  print(jsonDecode(response.statusCode.toString()));
  print(jsonDecode(response.body.toString()));
  print('error login from api');

  return Future.error(response.statusCode);
}
