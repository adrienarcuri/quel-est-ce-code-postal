import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildAppTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  final textTheme = Theme.of(context).textTheme;

  return base.copyWith(
    // textTheme
    textTheme: GoogleFonts.loraTextTheme(textTheme).copyWith(
      bodyText1: GoogleFonts.roboto(textStyle: textTheme.bodyText1),
      bodyText2: GoogleFonts.roboto(textStyle: textTheme.bodyText2),
      button: GoogleFonts.roboto(textStyle: textTheme.button),
      caption: GoogleFonts.roboto(textStyle: textTheme.caption),
      overline: GoogleFonts.roboto(textStyle: textTheme.overline),
      //subtitle1: GoogleFonts.roboto(textStyle: textTheme.subtitle1),
      subtitle2: GoogleFonts.roboto(textStyle: textTheme.subtitle2),
    ),
    // Colors
    accentColor: Colors.grey,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: base.colorScheme.copyWith(secondary: Colors.blue),
    // Icons
    primaryIconTheme: base.primaryIconTheme.copyWith(color: Colors.blue),
    iconTheme: base.iconTheme.copyWith(
      color: Colors.black,
    ),
    // Buttons
    buttonTheme: base.buttonTheme.copyWith(buttonColor: Colors.blue),
    buttonBarTheme:
        base.buttonBarTheme.copyWith(buttonTextTheme: ButtonTextTheme.accent),
    // Card
    cardTheme: base.cardTheme.copyWith(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    cardColor: Colors.white,
    // TextSelection
    textSelectionTheme:
        base.textSelectionTheme.copyWith(selectionColor: Colors.grey),
    errorColor: Colors.red,
    // InputDecoration
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      fillColor: Colors.white,
      hoverColor: Colors.black.withOpacity(0.02),

      // focusedBorder:
      //     OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(50.0),
      //   borderSide: const BorderSide(width: 0.0),
      // ),
    ),
  );
}
