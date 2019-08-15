import 'package:flutter/material.dart';

class Week extends StatelessWidget {
  Widget _weekBlock(String weekContent) => Expanded(
        child: Container(
          height: 50,
          child: Center(
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
              child: Text(
                weekContent,
                style: TextStyle(
                    color: weekContent == "周日" || weekContent == "周六"
                        ? Colors.black45
                        : Colors.black),
              ),
            ),
          ),
        ),
      );

  List<Widget> _renderWeekDays() {
    List<Widget> list = [];
    list.add(_weekBlock("周日"));
    list.add(_weekBlock("周一"));
    list.add(_weekBlock("周二"));
    list.add(_weekBlock("周三"));
    list.add(_weekBlock("周四"));
    list.add(_weekBlock("周五"));
    list.add(_weekBlock("周六"));
    return list;
  }

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _renderWeekDays(),
      );
}
