import 'package:flutter/material.dart';
class TestBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('带标题的测试页'),
      ),
      body:Column(
        children: <Widget>[
          Row(
              children: <Widget>[
                Expanded(
                  child:RaisedButton(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                      child: Text("data"),
                    ),
                    onPressed: (){},
                  ) ,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text("按钮"),
                  onPressed: (){},
                  ),
                ),
                RaisedButton(
                  child: Text("按钮"),
                  onPressed: (){},
                ),
              ],
            ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("这是内容"),
                ),
                ListTile(
                  title: Text("这也是内容"),
                ),
                ListTile(
                  title: Text("这还是内容"),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}