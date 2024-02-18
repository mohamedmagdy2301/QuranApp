import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  getApi({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    print("-----------------------------------${response.statusCode}--");

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load surah data');
    }
  }
}
