import 'package:flutter/material.dart';
class ZoomRoute extends PageRouteBuilder{
  final Widget widget;
  ZoomRoute(this.widget)
    :super(
      // 过渡时间
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(BuildContext context,Animation<double> animation1,Animation<double> animation2){
          return widget;
        },
      transitionsBuilder:(BuildContext context,Animation<double> animation1,Animation<double> animation2,Widget child){
            // FadeTransition渐隐渐现的过渡效果
          return ScaleTransition(
            scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
              parent:animation1,
              curve: Curves.fastOutSlowIn
              )),
              child:child
          );
        }  
    ); 
}