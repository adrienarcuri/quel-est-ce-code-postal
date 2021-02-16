import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/widgets/animated_title.dart';

import 'package:quel_est_ce_code_postal/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.10,
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: AnimatedTitle(),
              ),
              SearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
