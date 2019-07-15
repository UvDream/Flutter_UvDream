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
          child: Wrap(
            children: <Widget>[
              Icon(
                IconData(0xe64d,fontFamily: 'IconFont'),
                size: 40,
                color: Colors.red,
              ),
              Icon(
                IconData(0xe650,fontFamily: 'IconFont'),
                size: 40,
                color: Colors.green,
              ),
              Icon(
                IconData(0xe651,fontFamily: 'IconFont'),
                size: 40,
                color: Colors.blue,
              ),
              Icon(
                IconData(0xe659,fontFamily: 'IconFont'),
                size: 40,
                color: Colors.black,
              )
            ],
          ),
        )
      ),
    );
  }
}
