import 'package:http/http.dart' as http;
import 'package:prod_family/app/Shared/Const.dart';
import 'dart:convert';

Future<String> Add_Remove_Favorite(String token, String productID) async {
  final Map<String, dynamic> Data = {
    'product_id': productID,
  };
  final http.Response response = await http.post(
    Uri.parse('${KbasUrl}add-to-favourite'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': token,
    },
    body: jsonEncode(Data),
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.statusCode;

    // then parse the JSON.
//TODO: remove this line
    print(jsonDecode(response.statusCode.toString()));
    print('Add To Favorite Success from api');

    return jsonString.toString();

    // then throw an exception.

    //throw Exception('......');
  }
//TODO: remove this line
  print(jsonDecode(response.statusCode.toString()));
  print('error Add To Favorite from api');

  return Future.error(response.statusCode);
}
