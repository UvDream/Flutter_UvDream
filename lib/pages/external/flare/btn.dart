import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class BtnFlare extends StatefulWidget {
  @override
  _BtnFlareState createState() => _BtnFlareState();
}

class _BtnFlareState extends State<BtnFlare> {
  String _currentAnimation = 'normal';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: GestureDetector(
            child: FlareActor(
              "flrs/animation_test.flr",
              animation: _currentAnimation,
              fit: BoxFit.contain,
              callback: (animationName) {
                print(animationName);
                switch (animationName) {
                  case "tap":
                    break;
                  case "success":
                    break;
                  case "fail":
                    break;
                }
              },
            ),
          ),
        ),
        RaisedButton(
          color: Colors.green,
          onPressed: () {
            setState(() {
              _currentAnimation = "success";
            });
          },
          child: Text(
            'Success',
            style: TextStyle(color: Colors.white),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _currentAnimation = "tap";
            });
          },
          child: Text(
            'Tap',
            style: TextStyle(color: Colors.white),
          ),
        ),
        RaisedButton(
          color: Colors.red,
          onPressed: () {
            setState(() {
              _currentAnimation = "fail";
            });
          },
          child: Text(
            'fail',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
