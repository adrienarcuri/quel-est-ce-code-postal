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
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        //primaryColor: Colors.yellow,
        //accentColor: Colors.yellow,
        //primaryColor: Colors.blue,
        //brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}
