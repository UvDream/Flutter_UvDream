import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareStatus extends StatefulWidget {
  @override
  _FlareStatusState createState() => _FlareStatusState();
}

class _FlareStatusState extends State<FlareStatus> {
  String _currentAnimation = "normal";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("第三方")),
        body: Container(
          child: GestureDetector(
            child: FlareActor('flrs/animation_test.flr',
                animation: _currentAnimation,
                fit: BoxFit.contain, callback: (animationName) {
                  switch (animationName) {
                    case "tap":
                      setState(() {
                        _currentAnimation = "loading";
                      });
                      break;
                    case "success":
                      setState(() {
                        _currentAnimation = "normal";
                      });
                      break;
                    case "fail":
                      setState(() {
                        _currentAnimation = "normal";
                      });
                      break;
                  }
            }),
            onTap: () {
              if (_currentAnimation == "normal") {
                setState(() {
                  _currentAnimation = "tap";
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
