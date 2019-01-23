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
          title: new Text("官方组件示例"),
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
    //  _pushNavigatorWidget(dynamic pages){
    //    Navigator.push(
    //       context, 
    //       MaterialPageRoute(
    //         builder:(context)=>pages()
    //       )
    //     );
    // }
    return Card(
      child: Column(
        children: ComponentsLists.map((Choice item){
              return Column(
                children: <Widget>[
                  ListTile(
                      // 头部
                      leading: Text(item.indexs),
                      // 标题
                      title: Text(item.title),
                      // 副标题
                      subtitle: Text(item.subtitle),
                      // 后缀
                      trailing: Icon(Icons.chevron_right),
                      onTap:()=>_onTop(context,item.indexs)
                      // onTap: (){
                      //    _pushNavigatorWidget(item.pages);
                      // },
                  ),
                  new Divider()
                ],
              );
        }).toList(),
      ),
    );
  }
}



void _onTop(BuildContext context, String id){
    switch(id){
      case "1":
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder:(context)=>new BottomNavigation()
          )
        );
      break;
      case "2":
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder:(context)=>new BottomNavigationButton()
        )
      );
      break;
      case "3":
        Navigator.push(
        context, 
        MaterialPageRoute(
          builder:(context)=>new AppBarPage()
        )
      );
      break;
      case "4":
        Navigator.push(
        context, 
        MaterialPageRoute(
          builder:(context)=>new AnimationListPage()
        )
      );
      break;
      case "5":
        Navigator.push(
        context, 
        MaterialPageRoute(
          builder:(context)=>new RowColumnPage()
        )
      );
      break;
    }
}


  
class Choice{
  const Choice({this.title,this.subtitle,this.indexs,this.pages});
  final String title;
  final String subtitle;
  final String indexs;
  final Object pages;
}
const List<Choice> ComponentsLists=const <Choice>[
  const Choice(title:"导航栏组件",subtitle:"常见导航栏组件",indexs:"1",pages:BottomNavigation),
  const Choice(title:"导航栏组件",subtitle:"中间嵌入的底部导航栏组件",indexs:"2",pages:BottomNavigationButton),
  const Choice(title:"AppBar Tabs",subtitle:"悬浮在AppBar下面的tabs",indexs:"3",pages:BottomNavigation),
  const Choice(title:"路由动画",subtitle:"常见的动画",indexs:"4",pages:BottomNavigation),
  const Choice(title:"Row/Column",subtitle:"水平/垂直布局",indexs:"5",pages:BottomNavigation),
];

