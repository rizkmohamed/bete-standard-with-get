import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:prod_family/app/Shared/Const.dart';
import 'package:prod_family/app/data/Models/Product/Categores/Categoy.dart';

Future<Categories> GetCategories() async {
  final http.Response response = await http.get(
    Uri.parse('${KbasUrl}categories'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      //'sw-context-token': token,
    },
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.body;
    //TODO: remove this line
    print('Categores  here from api');
    // then parse the JSON.
    //print(jsonDecode(response.statusCode.toString()));
    return categoresFromJson(jsonString);

    // then throw an exception.

    //throw Exception('......');
  }
  //TODO: remove this line
  print('error get Categores  from api');
  print(jsonDecode(response.statusCode.toString()));

  return Future.error(response.statusCode);
}
