import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quel_est_ce_code_postal/models/city_model.dart';
import 'package:quel_est_ce_code_postal/services/postal_code_service.dart';
import 'package:quel_est_ce_code_postal/widgets/city_item.dart';

class SearchField extends StatefulWidget {
  SearchField({Key key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _formKey = GlobalKey<FormState>();
  String _helperText = 'Entrez un code postal à 5 chiffres 😇';

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            focusNode: _searchFocusNode,
            controller: _searchController,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 5,
            minLines: 1,
            maxLines: 1,
            style: TextStyle(
              //color: Colors.black,
              fontSize: 22.0,
              letterSpacing: 5.0,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                labelText: 'Code Postal',
                labelStyle: TextStyle(height: 0.9),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    //color: Colors.white,
                  ),
                ),
                //hintText: _hintText,
                hintMaxLines: 1,
                //fillColor: Colors.white,
                filled: true,
                helperText: _helperText,
                helperStyle: TextStyle(fontSize: 14)),
            onChanged: (text) {
              setState(() {
                int textSize = text.length;
                switch (textSize) {
                  case 0:
                    _helperText = 'Entrez un code postal à 5 chiffres 😇';
                    break;
                  case 1:
                    _helperText = 'Encore 4 chiffres 😃';
                    break;
                  case 2:
                    _helperText = 'Encore 3 chiffres 😬';
                    break;
                  case 3:
                    _helperText = 'Et Encore 2 chiffres 😤';
                    break;
                  case 4:
                    _helperText = 'Plus que 1... 🥵';
                    break;
                  case 5:
                    _helperText = 'Parfait ! 😉';

                    break;
                  default:
                }
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                return "Entrez un code postal s'il vous plaît !";
              }
              if (value.length != 5) {
                return "Le code postal doit comporter 5 chiffres, par exemple : 34000";
              }
              return null;
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          if (_searchController.text.length == 5)
            FutureBuilder(
              future: fetchCommune(_searchController.text),
              builder:
                  (context, AsyncSnapshot<List<CityModel>> citiesSnapshot) {
                var children = [];
                if (citiesSnapshot.hasData) {
                  Widget nbResult = Center(
                    child: Text(
                        'Nombre de résultat(s): ${citiesSnapshot.data.length}'),
                  );

                  children = [
                    nbResult,
                    SizedBox(
                      height: 20.0,
                    ),
                    ...citiesSnapshot.data
                        .map((CityModel city) => CityItem(cityName: city.name))
                        .toList()
                  ];
                } else if (citiesSnapshot.hasError) {
                  children = [Text('Aucun résultat')];
                } else {
                  children = [CircularProgressIndicator()];
                }
                return Column(children: [...children]);
              },
            )
        ],
      ),
    );
  }
}
