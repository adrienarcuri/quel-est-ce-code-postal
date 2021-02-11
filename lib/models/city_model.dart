import 'package:flutter/foundation.dart';

class CityModel {
  final String name;
  final String label;
  final String postalCode;
  final String cityCode;

  const CityModel({
    @required this.name,
    @required this.label,
    @required this.postalCode,
    @required this.cityCode,
  }) : assert(name != null &&
            label != null &&
            postalCode != null &&
            cityCode != null);

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json['nomCommune'],
      label: json['libelleAcheminement'],
      cityCode: json['codeCommune'],
      postalCode: json['codePostal'],
    );
  }
}
