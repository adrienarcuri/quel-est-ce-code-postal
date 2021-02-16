import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildAppTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: GoogleFonts.ptSansTextTheme(Theme.of(context).textTheme),
    accentColor: Colors.grey,
    primaryColor: Colors.black,
    iconTheme: base.iconTheme.copyWith(
      color: Colors.black,
    ),
    primaryIconTheme: base.primaryIconTheme.copyWith(color: Colors.blue),
    buttonTheme: base.buttonTheme.copyWith(buttonColor: Colors.blue),
    colorScheme: base.colorScheme.copyWith(secondary: Colors.blue),
    buttonBarTheme:
        base.buttonBarTheme.copyWith(buttonTextTheme: ButtonTextTheme.accent),
    scaffoldBackgroundColor: Colors.white,
    cardTheme: base.cardTheme.copyWith(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    cardColor: Colors.white,
    textSelectionTheme:
        base.textSelectionTheme.copyWith(selectionColor: Colors.grey),
    errorColor: Colors.red,
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      fillColor: Colors.white,
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
        borderSide: const BorderSide(width: 0.0),
      ),
    ),
  );
}
