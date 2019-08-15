import 'package:flutter/material.dart';
import './flare/btn.dart';

class FlareStatus extends StatefulWidget {
  @override
  _FlareStatusState createState() => _FlareStatusState();
}

class _FlareStatusState extends State<FlareStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flare动画'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[BtnFlare()],
        ),
      ),
    );
  }
}
