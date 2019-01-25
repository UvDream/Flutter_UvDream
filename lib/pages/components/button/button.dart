import 'package:flutter/material.dart';
class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("各式按钮"),
      ),
      floatingActionButton: FloatingActionButton(
        // 背景色
        backgroundColor: Colors.orange,
        // 未点击的阴影值
        elevation: 10,
        // 点击时的阴影值
        highlightElevation: 2,
        // 长按文字提示
        tooltip: "文字提示",
        // 按钮里面文字小图标颜色
        foregroundColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        child: Icon(Icons.access_alarms),
        onPressed: (){},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            RaisedButton(
              // 背景色
              color: Colors.yellow,
              // 与文字的内边距
              // padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
              // 按钮内文字颜色
              textColor: Colors.blue,
              // 按钮主题
              textTheme: ButtonTextTheme.accent,
              // 按钮被禁用显示的颜色
              disabledColor: Colors.green,
              // 按钮被禁用时文字显示颜色
              disabledTextColor: Colors.white,
              // 击高亮的时候显示在控件上面，水波纹下面的颜色
              highlightColor: Colors.red,
              // 水波纹颜色
              splashColor: Colors.black,
              // 按钮主题高亮
              colorBrightness: Brightness.dark,
              // 按钮下面的阴影
              elevation: 10,
              // 高亮时候的阴影
              highlightElevation: 10,
              // 按下时候的阴影
              disabledElevation: 10,
              // 抗锯齿能力
              clipBehavior: Clip.antiAliasWithSaveLayer,
              // 带斜角的按钮
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(20))
              // ),
              // 圆边角
              // shape: CircleBorder(
              //     // 圆边颜色
              //   side: BorderSide(
              //     color: Colors.black
              //   )
              // ),
              // 圆角矩形
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(10))
              // ),
              // 两端半圆
              shape: StadiumBorder(),
              // shape: Border.all(color: Colors.black,style: BorderStyle.solid),
              // 水波纹高亮时回调
              onHighlightChanged: (boo){},
              child: Text("这是按钮"),
              onPressed: (){},
            ),
            OutlineButton(
              child: Text("还是按钮"),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: (){},
            ),
            FlatButton(
              child: Icon(Icons.access_alarm),
              onPressed: (){},
            ),
            ButtonBar(  
              // 对齐
              alignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                RaisedButton(
                  child: Text('ButtonBar'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('ButtonBar'),
                  onPressed: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
