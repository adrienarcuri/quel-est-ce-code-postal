import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/widgets/animated_screen/animated_screen.dart';

import 'package:quel_est_ce_code_postal/widgets/search_field/search_field.dart';
import 'package:quel_est_ce_code_postal/widgets/title_panel/title_panel.dart';

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
            child: Column(
              children: [
                TitlePanel(),
                Expanded(child: SearchField()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
