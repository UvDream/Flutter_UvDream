import 'package:flutter/material.dart';
class TestBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('带标题的测试页'),
      ),
      body: Text("data"),
    );
  }
}