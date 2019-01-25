import 'package:flutter/material.dart';

class DividerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线条"),
      ),
      body: Column(
        children: <Widget>[
          Divider(
            color: Colors.red,
            height: 10,
          )
        ],
      ),
    );
  }
}