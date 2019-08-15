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
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: GestureDetector(
            child: FlareActor(
              "flrs/btn.flr",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              color: Colors.orange,
              onPressed: () {
                setState(() {
                  _currentAnimation = "loading";
                });
              },
              child: Text(
                'Loading',
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
                'Fail',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }
}
