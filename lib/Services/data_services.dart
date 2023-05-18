import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
// import 'package:http/http.dart' as http;

class DataServices {
  // final String _baseUrl = 'http://kpknl.prototype.id/api';

  Future<List<dynamic>> getUsers() async {
    // var apiUrl = '/infolelang';

    // http.Response response = await http.get(Uri.parse(_baseUrl + apiUrl));

    // try {
    //   if (response.statusCode == 200) {
    //     print("Worked");
    //     // List<dynamic> list = await json.decode(response.body);
    //     // print(list);
    //     // print(await json.decode(response.body));
    //     return [];
    //   } else {
    //     print(response.statusCode);
    //     return [];
    //   }
    // } catch (e) {
    //   print(e);
    //   print("Api request failed");
    //   return [];
    // }

    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    return Future.delayed(
        const Duration(seconds: 3), (() => list.map((e) => e).toList()));
  }
}
