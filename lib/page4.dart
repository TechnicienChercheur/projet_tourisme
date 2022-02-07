import 'package:flutter/material.dart';

class paege4 extends StatefulWidget {
  const paege4({ Key? key }) : super(key: key);

  @override
  _paege4State createState() => _paege4State();
}

class _paege4State extends State<paege4>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}