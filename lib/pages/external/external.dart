import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
class ExternalPage extends StatelessWidget {
  String _currentAnimation = "normal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三方组件示例"),
      ),
      body: Container(
        child: GestureDetector(
          onTap: () {
            if (_currentAnimation == "normal") {
              setState(() {
                _currentAnimation = "tap";
              });
            }
          },
          child: FlareActor(
            "flrs/animation_test.flr",
            animation: _currentAnimation,
            fit: BoxFit.contain,
            callback: (animationName){
              switch(animationName){
                case "tap":
                  break;
                case "success":
                  break;
                case "fail":
                  break;
              }
            },
          ),
        )
      )
    );
  }
}