import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/screens/home_screen.dart';
import 'package:quel_est_ce_code_postal/constants.dart' as constants;

class InfoScreen extends StatelessWidget {
  static const routeName = '/info';

  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(constants.screenPadding),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: constants.screenMaxWidth),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Informations',
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
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
                      'L\'application utilise l\'open API CARTO (module code postaux), créé par l\'IGN, pour fournir les villes associées aux code postaux. Elle n\'utilise pas de cookie et ne trace pas les utilisateurs.'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      'Code source: https://github.com/adrienarcuri/quel-est-ce-code-postal'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Créateur: Adrien ARCURI'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
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
        ),
      ),
    );
  }
}
