import 'package:flutter/material.dart';
import '../../test_page.dart';
class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new DefaultTabController(
        length:choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: Text("AppBar Tabs"),
            bottom: new TabBar(
              // tabs颜色选中颜色
              labelColor:Colors.orange,
              // tabs选中样式
              labelStyle: TextStyle(fontSize: 18),
              // tabs未选中的颜色
              unselectedLabelColor: Colors.white,
              // tabs未选中的样式
              unselectedLabelStyle: TextStyle(fontSize: 10),
              // 底部指示器的padding
              indicatorPadding: const EdgeInsets.all(0),
              // 下划线高度
              indicatorWeight: 2,
              //下划线颜色
              indicatorColor: Colors.red,
              // 指示器大小计算方式
              // indicatorSize: ,
              // 是否可滚动
              // isScrollable: true,
              // tabs: <Widget>[
              //   Tab(text: "推荐",icon:Icon(Icons.ac_unit)),
              //   Tab(text: "关注",icon:Icon(Icons.access_alarm)),
              //   Tab(text: "热榜",icon:Icon(Icons.access_time)),
              // ],
              tabs: choices.map((Choice choice){
                return new Tab(
                  text: choice.title,
                  icon: new Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          // tabs主体内容
          body: new TabBarView(
            children: <Widget>[
              new TestPage(),
              new TestPage(),
              new TestPage(),
            ],
          ),
        ),
      ),
    );
  }
}
class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '推荐', icon: Icons.directions_car),
  const Choice(title: '关注', icon: Icons.directions_bike),
  const Choice(title: '热搜', icon: Icons.directions_boat),
];
