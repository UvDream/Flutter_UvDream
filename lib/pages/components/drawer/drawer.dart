import 'package:flutter/material.dart';
class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("侧边抽屉菜单栏")
      ),
      body: Text("整体内容"),
      drawer: Drawer(
        // Drawer 阴影效果大小
        elevation: 1,
        //  关闭/打开时的通知信息。
        //semanticLabel:, // ignore: missing_identifier
        child: ListView(
          children: <Widget>[
            _drawerHeader(),
            ListTile(
              title: Text("菜单1"),
              leading: Icon(Icons.ac_unit),
              onTap: (){},
            ),
            ListTile(
              title: Text("菜单2"),
              leading: Icon(Icons.access_alarm),
              onTap: (){},
            ),
            ListTile(
              title: Text("菜单3"),
              leading: Icon(Icons.accessibility),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }

  static Widget _drawerHeader() {
    //  头部
    return new UserAccountsDrawerHeader(
      accountName: new Text(
        "UvDream",
      ),
      accountEmail: new Text(
        "UvDream@163.com",
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: NetworkImage('http://94.191.31.210/img/avator.3f0253b7.png'),
      ),
      onDetailsPressed: () {
      },
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage('http://94.191.31.210/img/avator.3f0253b7.png'),
        ),
      ],
    );
  }
}


