import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dataevent.dart';

class Service {
  Future<List<cData>> getAllData() async {
    final response = await http.get(
      Uri.parse('https://the-lazy-media-api.vercel.app/api/tech'),
    );
    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed load Data');
    }
  }
}
