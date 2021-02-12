import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Quel est ce',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: GoogleFonts.courierPrime().fontFamily,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' code postal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          fontFamily: GoogleFonts.courierPrime().fontFamily,
                        ),
                      ),
                      TextSpan(
                        text: ' ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          fontFamily: GoogleFonts.courierPrime().fontFamily,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SearchField(),
            ],
          ),
        ),
      ),
    );
  }
}
