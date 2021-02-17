import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  final Widget child;
  AnimatedScreen({this.child, Key key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000))
        .then((value) => setState(() {}));
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FadeTransition(
        opacity: _animation,
        child: widget.child,
      ),
    );
  }
}
