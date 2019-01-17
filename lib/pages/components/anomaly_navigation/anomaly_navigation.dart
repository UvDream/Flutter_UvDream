import 'package:flutter/material.dart';
import 'each_view.dart';
class BottomNavigationButton extends StatefulWidget {
  _BottomNavigationButtonState createState() => _BottomNavigationButtonState();
}

class _BottomNavigationButtonState extends State<BottomNavigationButton> {
  List<Widget> _eachView;
  int _index=0;
 @override
  void initState() {
      super.initState();
      _eachView = List();
      _eachView..add(EachView('首页'))..add(EachView('关于'));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 首选项
      body: _eachView[_index],
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        // 长按复选按钮显示的文字
        tooltip: "长按悬浮按钮显示",
        // 按钮里面内容
        child: Icon(
          Icons.ac_unit,
          color:Colors.white
        ),
        // 点击事件
        onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('悬浮按钮新页面');
          }));
        },
      ),
      // 悬浮按钮浮动的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.access_time),
              color: Colors.white,
              onPressed: (){
                 setState(() {
                    _index=0;             
                 });
              },
            ),
            IconButton(
              icon: Icon(Icons.accessibility),
              color: Colors.white,
              onPressed: (){
                 setState(() {
                    _index=1;             
                 });
              },
            )
          ],
        ),
      ),
    );
 }
}