import 'package:flutter/material.dart';
import './bottom_navigation.dart';
import './anomaly_navigation/anomaly_navigation.dart';
import './appbar/appbar.dart';
class ComponentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("组件"),
        ),
        body:new Center(
          child: ComponentsList(),
        )
    );
  }
}
class ComponentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          new Divider(),
          new  ListTile(
              // 头部
              leading:Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              // 标题
              title: Text("导航栏组件",style:TextStyle(fontWeight:FontWeight.w500)),
              // 副标题
              subtitle: Text("常见的底部导航栏组件"),
              // 后缀
              trailing: Icon(Icons.chevron_right),
              // 点击事件
              onTap: (){
                  Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder:(context)=>new BottomNavigation()
                  )
                );
              },
              // 长按事件
              onLongPress: (){
                print("object");
              }
            ), 
          new Divider(),
          new ListTile(
              leading:Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              title: Text("导航栏组件",style:TextStyle(fontWeight:FontWeight.w500)),
              subtitle: Text("中间嵌入的底部导航栏组件"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                 Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder:(context)=>new BottomNavigationButton()
                  )
                );
              },
           ),
          new Divider(),
          new ListTile(
              leading:Text("3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              title: Text("AppBar Tabs",style:TextStyle(fontWeight:FontWeight.w500)),
              subtitle: Text("悬浮在AppBar下面的tabs"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                 Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder:(context)=>new AppBarPage()
                  )
                );
              },
           ),
        ],
      ),
    );
  }
}