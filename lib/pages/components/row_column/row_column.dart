import 'package:flutter/material.dart';
class RowColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("水平和垂直布局"),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 300,
              color: Colors.yellow,
              child: Row(
                // 主轴(x)对齐方式
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                // 副轴对齐方式
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                   Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                   Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ],
              ),
            ),
                Container(
              height: 300,
              color: Colors.red,
              child: Column(
                // 主轴(x)对齐方式
                mainAxisAlignment: MainAxisAlignment.center,
                // 副轴对齐方式
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                   Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                   Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: <Widget>[
                Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0
                  ),
                ),
                Text(
                  'Flutter',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0
                  ),
                ),
                Text(
                  'Flutter',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0
                  ),
                ),
              ],
            )
        ],
      )
    );
    
  }
}
