import 'package:flutter/material.dart';
import 'package:quel_est_ce_code_postal/screens/home.dart';
import 'package:quel_est_ce_code_postal/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quel est ce code postal ?',
      theme: buildAppTheme(context),
      home: HomeScreen(),
    );
  }
}
