import 'package:flutter/material.dart';
import './calendar/calendar.dart';

class CalendarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日历组件'),
      ),
      body: Calendar(),
    );
  }
}
