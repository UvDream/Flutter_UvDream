import 'package:flutter/material.dart';
import './gradient_animation.dart';
import '../../test_bar_page.dart';
import './zoom_animation.dart';
import './zoom_rotate_animation.dart';
import './slider_animation.dart';
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
    return GridView.extent(
      maxCrossAxisExtent: 100,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: <Widget>[
       OutlineButton	(
        child: Text("渐变效果"),
        onPressed: (){
          Navigator.of(context).push(
            GradientRoute(TestBarPage())
          );
        },
       ),
        OutlineButton	(
          child: Text("缩放效果"),
          onPressed: (){
            Navigator.of(context).push(
              ZoomRoute(TestBarPage())
            );
          },
       ),
       OutlineButton	(
          child: Text("缩放+旋转效果"),
          onPressed: (){
            Navigator.of(context).push(
              ZoomRotateRoute(TestBarPage())
            );
          },
       ),
         OutlineButton	(
          child: Text("左右滑动"),
          onPressed: (){
            Navigator.of(context).push(
              SlideRouter(TestBarPage())
            );
          },
       ),
      ],
    );
  }
}