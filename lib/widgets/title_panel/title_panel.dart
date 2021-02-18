import 'package:flutter/material.dart';

class TitlePanel extends StatelessWidget {
  const TitlePanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text('Quel est ce code postal ?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 30.0),
            child: Text(
              'Entrez un code postal et trouver la ville associée !',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
