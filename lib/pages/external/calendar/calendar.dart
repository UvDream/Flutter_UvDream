import 'package:flutter/material.dart';
import './week.dart';
import './month.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime NowDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('$NowDateTime'),
          Month(nowDateTime: NowDateTime),
          Week(),
        ],
      ),
    );
  }
}
