import 'package:flutter/material.dart';
class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("各式按钮"),
      ),
      body: SingleChildScrollView(
        child: Text("按钮组"),
      ),
    );
  }
}
