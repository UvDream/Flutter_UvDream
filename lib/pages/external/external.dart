import 'package:flutter/material.dart';
class ExternalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三方组件示例"),
      ),
      body: Text("第三方"),
    );
  }
}