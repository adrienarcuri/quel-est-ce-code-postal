import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quel_est_ce_code_postal/models/city_model.dart';

const String url = 'https://apicarto.ign.fr/api/codes-postaux/communes/';

Future<List<CityModel>> fetchCommune(String postalCode) async {
  final response = await http.get(url + postalCode);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    var citiesJson = jsonDecode(response.body) as List;
    List<CityModel> cities =
        citiesJson.map((c) => CityModel.fromJson(c)).toList();
    return cities;
  } else {
    throw Exception('Failed to load cities');
  }
}
