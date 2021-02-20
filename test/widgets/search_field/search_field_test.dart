import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quel_est_ce_code_postal/globals.dart' as globals;
import 'package:quel_est_ce_code_postal/widgets/city_item/city_item.dart';
import 'package:quel_est_ce_code_postal/widgets/search_field/search_field.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

main() {
  group('SearchField Widgets tests', () {
    _createSearchField() => MaterialApp(
            home: Scaffold(
          body: SearchField(),
        ));

    testWidgets('testing that we can enter a postal code of two characters',
        (tester) async {
      final String postalCodeInput = "34";
      await tester.pumpWidget(_createSearchField());
      var textFormField = find.byType(TextFormField);
      await tester.tap(textFormField);
      await tester.enterText(textFormField, postalCodeInput);
      await tester.pumpAndSettle();

      expect(
          find.widgetWithText(TextFormField, postalCodeInput), findsOneWidget);
      expect(find.byType(CityItem), findsNothing);
    });

    // TODO : resolve client.get is null
    testWidgets(
        'testing  that we have results when we enter a complete postal code',
        (tester) async {
      var client = globals.getHttpClient();
      // Use Mockito to return a sucessful response when it calls the provided http.Client.
      when(client
              .get('https://apicarto.ign.fr/api/codes-postaux/communes/42000'))
          .thenAnswer((realInvocation) async => http.Response(
              '[{"nomCommune": "Saint-Etienne","libelleAcheminement": "SAINT ETIENNE","codeCommune": "4552145","codePostal": "42000"}]',
              200));

      final String postalCodeInput = "42000";
      await tester.pumpWidget(_createSearchField());
      var textFormField = find.byType(TextFormField);
      await tester.tap(textFormField);
      await tester.enterText(textFormField, postalCodeInput);
      await tester.pumpAndSettle();

      expect(
          find.widgetWithText(TextFormField, postalCodeInput), findsOneWidget);
      expect(find.byType(CityItem), findsWidgets);
    }, skip: true);
  });
}
