import 'package:flutter/material.dart';

class Month extends StatefulWidget {
  const Month({this.nowDateTime});
  final DateTime nowDateTime;
  @override
  _MonthState createState() => _MonthState();
}

class _MonthState extends State<Month> {
  @override
  Widget build(BuildContext context) {
    print(widget.nowDateTime);
    return Container(
      child: Text('$widget.nowDateTime'),
    );
  }
}
