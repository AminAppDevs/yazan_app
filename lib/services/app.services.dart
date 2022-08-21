// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yazan_app/model/type.head.model.dart';

class AppServices {
  static Future<TypeHead?> getTypeHead() async {
    String url = 'https://worldwide-restaurants.p.rapidapi.com/search';
    try {
      var request = http.Request('POST', Uri.parse(url));
      var headers = {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': 'e78b628e0dmsh2eae0f2ea8ad138p180df3jsnbe5687cc5038',
        'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
      };
      request.bodyFields = {
        "q": "riyadh",
        "language": "en_US",
        "limit": '1',
        "currency": "SAR",
        "location_id": '293995',
      };
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      print(response.statusCode == 200);
      if (response.statusCode == 200) {
        var result = await http.Response.fromStream(response);

        return TypeHead.fromJson(jsonDecode(result.body));
      } else {
        print('xxxxxxxxxxxxxxx: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
