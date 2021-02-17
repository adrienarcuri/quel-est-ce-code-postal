import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/widgets/animated_screen.dart';

import 'package:quel_est_ce_code_postal/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedScreen(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.10,
                vertical: MediaQuery.of(context).size.height * 0.05),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text('Quel est ce code postal ?',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0, top: 10.0),
                  child: Text(
                    'Entrez un code postal et trouver la ville associée !',
                    textAlign: TextAlign.center,
                  ),
                ),
                SearchField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
