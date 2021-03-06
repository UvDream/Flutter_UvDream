import 'package:flutter/material.dart';
class GradientRoute extends PageRouteBuilder{
  final Widget widget;
  GradientRoute(this.widget)
    :super(
      // 过渡时间
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(BuildContext context,Animation<double> animation1,Animation<double> animation2){
          return widget;
        },
      transitionsBuilder:(BuildContext context,Animation<double> animation1,Animation<double> animation2,Widget child){
            // FadeTransition渐隐渐现的过渡效果
            return FadeTransition(
              // animate动画样式,一般动画曲线CurvedAnimation
              opacity: Tween(begin:0.0,end :1.0).animate(CurvedAnimation(
                  parent:animation1,
                  // cure动画节奏
                  curve:Curves.fastOutSlowIn
              )),
              child: child,
            );
        }  
    ); 
}