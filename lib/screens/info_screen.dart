import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/screens/home_screen.dart';

class InfoScreen extends StatelessWidget {
  static const routeName = '/info';

  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Informations',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  '"Quel est ce code postal" est une application opensource qui donne le nom de la commune associée à un code postal en France.'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  'L\'application utilise l\'open API CARTO (module code postaux), créé par l\'IGN, pour fournir les villes associées aux code postaux. Elle n\'utilise pas de cookie et ne trace pas ces utilisateurs.'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  'Code source: https://github.com/adrienarcuri/quel-est-ce-code-postal'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName),
                  child: Text('Retour'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
