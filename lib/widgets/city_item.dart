import 'package:flutter/material.dart';

class CityItem extends StatelessWidget {
  final String cityName;

  const CityItem({
    @required this.cityName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: ListTile(
          contentPadding: EdgeInsets.all(12.0),
          trailing: Icon(Icons.launch),
          title: Text('$cityName',
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
