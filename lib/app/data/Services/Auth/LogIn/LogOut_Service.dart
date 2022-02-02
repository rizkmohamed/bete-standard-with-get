import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:prod_family/app/Shared/Const.dart';

Future<String> LogOut(String token) async {
  final http.Response response = await http.post(
    Uri.parse('${KbasUrl}user/logOut'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': token,
      //'sw-access-key': Kaccesskey
    },
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.statusCode;

    //TODO: remove this line
    print(jsonDecode(response.statusCode.toString()));
    print('logout from api');
    // then parse the JSON.
    return jsonString.toString();

    // then throw an exception.

    //throw Exception('......');
  }
  //TODO: remove this line
  print(jsonDecode(response.statusCode.toString()));
  print('error logout from api ');

  return Future.error(response.statusCode);
}
