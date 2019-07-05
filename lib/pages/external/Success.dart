import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  String _currentStatus='normal';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title:Text('成功')),
        body: Container(
          child: GestureDetector(
            child: FlareActor(
              'flrs/Success.flr',
              animation: _currentStatus
            ),
            onTap: (){
              setState(() {
                _currentStatus='Untitled';
              });
            },
          ),
        ),
      ),
    );
  }
}