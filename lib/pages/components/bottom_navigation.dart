import 'package:flutter/material.dart';
class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("导航组件"),
        ),
        body:Text("导航组件其实入口就是啦!请看lib目录下的bottom_navigation.dart文件")
    );
  }
}