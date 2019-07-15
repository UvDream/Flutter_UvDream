import 'package:flutter/material.dart';

class IconFontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('IconFont'),
        ),
        body: SingleChildScrollView(
          child: Icon(IconData(0xe64d, fontFamily: 'IconFont'),
              size: 50),
        ),
      ),
    );
  }
}
