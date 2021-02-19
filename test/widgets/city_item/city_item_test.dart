import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quel_est_ce_code_postal/widgets/city_item/city_item.dart';

void main() {
  Widget _createCityItem(String cityName) =>
      MaterialApp(home: CityItem(cityName: cityName));

  group('CityItem Widget tests', () {
    testWidgets(
        'testing that CityItem throw and exception when CityName is null',
        (tester) async {
      expect(() => _createCityItem(null), throwsAssertionError);
    });
    testWidgets('testing if cityName text shows up', (tester) async {
      final String cityName = 'Saint-Etienne';

      await tester.pumpWidget(_createCityItem(cityName));
      await tester.pumpAndSettle();

      expect(find.widgetWithText(ListTile, cityName), findsOneWidget);
    });
  });
}
