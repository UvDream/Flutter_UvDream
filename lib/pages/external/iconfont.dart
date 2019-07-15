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
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5.0),
                  child: Icon(
                    IconData(0xe64d, fontFamily: 'IconFont'),
                    size: 40,
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5.0),
                  child: Icon(
                    IconData(0xe650, fontFamily: 'IconFont'),
                    size: 40,
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5.0),
                  child: Icon(
                    IconData(0xe651, fontFamily: 'IconFont'),
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5.0),
                  child: Icon(
                    IconData(0xe659, fontFamily: 'IconFont'),
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
