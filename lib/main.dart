import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quel_est_ce_code_postal/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quel est ce code postal ?',
      theme: _buildAppTheme(context),
      home: HomeScreen(),
    );
  }
}

ThemeData _buildAppTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: GoogleFonts.courierPrimeTextTheme(Theme.of(context).textTheme),
    accentColor: Colors.yellow[400],
    primaryColor: Colors.blue,
    iconTheme: base.iconTheme.copyWith(
      color: Colors.blue,
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
    cardColor: Colors.grey[50],
    textSelectionTheme:
        base.textSelectionTheme.copyWith(selectionColor: Colors.blue),
    errorColor: Colors.red,
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      fillColor: Colors.yellow[400],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    ),
  );
}
