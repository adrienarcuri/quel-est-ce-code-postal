import 'package:flutter/material.dart';

class AnimatedTitle extends StatefulWidget {
  AnimatedTitle({Key key}) : super(key: key);

  @override
  _AnimatedTitleState createState() => _AnimatedTitleState();
}

class _AnimatedTitleState extends State<AnimatedTitle> {
  Color _color = Colors.white;
  double _fontSize = 20.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000)).then((value) => setState(() {
          _color = Colors.black;
          _fontSize = 30.0;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AnimatedDefaultTextStyle(
        duration: Duration(seconds: 4),
        curve: Curves.linear,
        child: Text('Quel est ce code postal ?'),
        style: TextStyle(color: _color, fontSize: _fontSize),
      ),
    );
  }
}
