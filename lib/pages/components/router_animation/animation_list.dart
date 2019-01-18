import 'package:flutter/material.dart';
class AnimationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由动画"),
      ),
      body: new Center(
        child: AnimationList(),
      ),
    );
  }
}
class AnimationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("呵呵"),
    );
  }
}