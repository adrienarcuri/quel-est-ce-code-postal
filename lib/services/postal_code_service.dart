import 'dart:convert';
import 'dart:io';
import 'package:quel_est_ce_code_postal/models/city_model.dart';
import 'package:quel_est_ce_code_postal/globals.dart' as globals;

const String url = 'https://apicarto.ign.fr/api/codes-postaux/communes/';

bool isTestEnv = Platform.environment.containsKey("FLUTTER_TEST");

Future<List<CityModel>> fetchCommune(String postalCode) async {
  try {
    var client = globals.getHttpClient();
    final response = await client.get(url + postalCode);
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
  } catch (e) {
    throw Exception(e);
  } finally {
    globals.httpClient.close();
  }
}
