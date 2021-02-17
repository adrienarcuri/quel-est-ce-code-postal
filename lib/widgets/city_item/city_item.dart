import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CityItem extends StatelessWidget {
  final String cityName;

  const CityItem({
    @required this.cityName,
    Key key,
  }) : super(key: key);

  void _launchURL(String place) async {
    final url = 'https://www.google.com/maps/place/$place';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: ListTile(
          contentPadding: EdgeInsets.all(12.0),
          trailing: IconButton(
            icon: Icon(Icons.map_outlined),
            onPressed: () => _launchURL(cityName),
          ),
          title:
              Text('$cityName', style: Theme.of(context).textTheme.bodyText1),
        ),
      ),
    );
  }
}
