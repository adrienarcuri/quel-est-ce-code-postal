import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/constants.dart' as constants;
import 'package:quel_est_ce_code_postal/screens/info_screen.dart';
import 'package:quel_est_ce_code_postal/widgets/animated_screen/animated_screen.dart';
import 'package:quel_est_ce_code_postal/widgets/search_field/search_field.dart';
import 'package:quel_est_ce_code_postal/widgets/title_panel/title_panel.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => Navigator.of(context)
                .pushReplacementNamed(InfoScreen.routeName)),
        body: AnimatedScreen(
          child: Padding(
            padding: const EdgeInsets.all(constants.screenPadding),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: constants.screenMaxWidth),
              child: Column(
                children: [
                  TitlePanel(),
                  Expanded(child: SearchField()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
