import 'package:flutter_test/flutter_test.dart';
import 'package:quel_est_ce_code_postal/models/city_model.dart';

main() {
  group('Test CityModel model', () {
    test('A CityModel instance should be created', () {
      const String name = 'Saint-Etienne';
      const String cityCode = '4940330';
      const String label = 'SAINT ETIENNE';
      const String postalcode = '42000';
      var myCity = CityModel(
        name: name,
        cityCode: cityCode,
        label: label,
        postalCode: postalcode,
      );

      expect(myCity.name, name);
      expect(myCity.cityCode, cityCode);
      expect(myCity.label, label);
      expect(myCity.postalCode, postalcode);
    });

    test('Creation of CityModel instance should throw an assertion error', () {
      _createCityModel() {
        CityModel(
          name: null,
          cityCode: null,
          label: null,
          postalCode: null,
        );
      }

      expect(() => _createCityModel(), throwsAssertionError);
    });

    test('Create a CityModel from json should work', () {
      const String name = 'Saint-Etienne';
      const String cityCode = '4940330';
      const String label = 'SAINT ETIENNE';
      const String postalcode = '42000';

      var json = {
        'nomCommune': name,
        'codeCommune': cityCode,
        'libelleAcheminement': label,
        'codePostal': postalcode
      };

      var myCity = CityModel.fromJson(json);

      expect(myCity.name, name);
      expect(myCity.label, label);
      expect(myCity.cityCode, cityCode);
      expect(myCity.postalCode, postalcode);
    });

    test('Create a CityModel from json should fail', () {
      _createCityModelFromJson() {
        const String cityCode = null;
        const String label = null;
        const String postalcode = null;

        var json = {
          'codeCommune': cityCode,
          'libelleAcheminement': label,
          'codePostal': postalcode
        };

        CityModel.fromJson(json);
      }

      expect(() => _createCityModelFromJson(), throwsAssertionError);
    });
  });
}
