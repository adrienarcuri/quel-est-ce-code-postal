import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:quel_est_ce_code_postal/models/city_model.dart';
import 'package:quel_est_ce_code_postal/services/postal_code_service.dart';
import 'package:quel_est_ce_code_postal/globals.dart' as globals;

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.
class MockClient extends Mock implements http.Client {}

main() {
  group('PostalCode Service testing - fetchCommune', () {
    test('returns a CityModel if the http call completes successfully',
        () async {
      final client = globals.httpClient;

      // Use Mockito to return a sucessful response when it calls the provided http.Client.
      when(client
              .get('https://apicarto.ign.fr/api/codes-postaux/communes/42000'))
          .thenAnswer((realInvocation) async => http.Response(
              '[{"nomCommune": "Saint-Etienne","libelleAcheminement": "SAINT ETIENNE","codeCommune": "4552145","codePostal": "42000"}]',
              200));

      expect(await fetchCommune('42000'), isA<List<CityModel>>());
    });

    test('throw an exception if the http call competes with an error', () {
      final client = globals.httpClient;

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
              .get('https://apicarto.ign.fr/api/codes-postaux/communes/42000'))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchCommune('42000'), throwsException);
    });
  });
}
