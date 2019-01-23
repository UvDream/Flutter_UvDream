import 'package:flutter/material.dart';
import './bottom_navigation.dart';
import './anomaly_navigation/anomaly_navigation.dart';
import './appbar/appbar.dart';
import './router_animation/animation_list.dart';
import './row_column/row_column.dart';
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
      // child: Column(
      //   children: <Widget>[
      //     new Divider(),
      //     new  ListTile(
      //         // 头部
      //         leading:Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         // 标题
      //         title: Text("导航栏组件",style:TextStyle(fontWeight:FontWeight.w500)),
      //         // 副标题
      //         subtitle: Text("常见的底部导航栏组件"),
      //         // 后缀
      //         trailing: Icon(Icons.chevron_right),
      //         // 点击事件
      //         onTap: (){
      //             Navigator.push(
      //             context, 
      //             MaterialPageRoute(
      //               builder:(context)=>new BottomNavigation()
      //             )
      //           );
      //         },
      //         // 长按事件
      //         onLongPress: (){
      //           print("object");
      //         }
      //       ), 
      //     new Divider(),
      //     new ListTile(
      //         leading:Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         title: Text("导航栏组件",style:TextStyle(fontWeight:FontWeight.w500)),
      //         subtitle: Text("中间嵌入的底部导航栏组件"),
      //         trailing: Icon(Icons.chevron_right),
      //         onTap: (){
      //            Navigator.push(
      //             context, 
      //             MaterialPageRoute(
      //               builder:(context)=>new BottomNavigationButton()
      //             )
      //           );
      //         },
      //      ),
      //     new Divider(),
      //     new ListTile(
      //         leading:Text("3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         title: Text("AppBar Tabs",style:TextStyle(fontWeight:FontWeight.w500)),
      //         subtitle: Text("悬浮在AppBar下面的tabs"),
      //         trailing: Icon(Icons.chevron_right),
      //         onTap: (){
      //            Navigator.push(
      //             context, 
      //             MaterialPageRoute(
      //               builder:(context)=>new AppBarPage()
      //             )
      //           );
      //         },
      //      ),
      //      new Divider(),
      //      new ListTile(
      //         leading:Text("4",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         title: Text("路由动画",style:TextStyle(fontWeight:FontWeight.w500)),
      //         subtitle: Text("几种常用的路由动画"),
      //         trailing: Icon(Icons.chevron_right),
      //         onTap: (){
      //            Navigator.push(
      //             context, 
      //             MaterialPageRoute(
      //               builder:(context)=>new AnimationListPage()
      //             )
      //           );
      //         },
      //      ),
      //      new Divider(),
      //       new ListTile(
      //         leading:Text("5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //         title: Text("Row和Column",style:TextStyle(fontWeight:FontWeight.w500)),
      //         subtitle: Text("水平/垂直布局"),
      //         trailing: Icon(Icons.chevron_right),
      //         onTap: (){
      //            Navigator.push(
      //             context, 
      //             MaterialPageRoute(
      //               builder:(context)=>new RowColumnPage()
      //             )
      //           );
      //         },
      //      ),
      //      new Divider(),
         
      //   ],
      // ),
      // child: ListView.builder(
      //   itemCount: ComponentsLists.length,
      //   itemBuilder: (context,index){
      //     return ListTile(
      //       title: Text('${ComponentsLists[index].title}'),
      //     );
      //   },
      // ),
      child: Column(
        children: ComponentsLists.map((Choice item){
              return ListTile(
              leading: Text(item.indexs),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: Icon(Icons.chevron_right),
              onTap:(){
                
              }
          );
        }).toList(),
      ),
    );
  }
}



  
class Choice{
  const Choice({this.title,this.subtitle,this.indexs});
  final String title;
  final String subtitle;
  final String indexs;
}
const List<Choice> ComponentsLists=const <Choice>[
  const Choice(title:"导航栏组件",subtitle:"常见导航栏组件",indexs:"1"),
  const Choice(title:"导航栏组件",subtitle:"中间嵌入的底部导航栏组件",indexs:"2"),
  const Choice(title:"AppBar Tabs",subtitle:"悬浮在AppBar下面的tabs",indexs:"3"),
  const Choice(title:"路由动画",subtitle:"常见的动画",indexs:"4"),
  const Choice(title:"Row/Column",subtitle:"水平/垂直布局",indexs:"5"),
];

