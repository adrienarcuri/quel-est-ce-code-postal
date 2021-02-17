import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/widgets/animated_screen/animated_screen.dart';

import 'package:quel_est_ce_code_postal/widgets/search_field/search_field.dart';
import 'package:quel_est_ce_code_postal/widgets/title_panel/title_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  final double _horizontalPaddingMobile = 0.0;
  final double _verticalPaddingMobile = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedScreen(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 767.0),
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
