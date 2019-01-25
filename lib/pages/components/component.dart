import 'package:flutter/material.dart';
import './bottom_navigation.dart';
import './anomaly_navigation/anomaly_navigation.dart';
import './appbar/appbar.dart';
import './router_animation/animation_list.dart';
import './row_column/row_column.dart';
import './drawer/drawer.dart';
import './button/button.dart';
import './text_field/text_field.dart';
class ComponentPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("官方组件示例"),
        ),
        body:new Center(
          child: SingleChildScrollView(
              child:ComponentsList() ,
          ),
        )
    );
  }
}
class ComponentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  _pushNavigatorWidget(Widget pages){
    //    Navigator.push(
    //       context, 
    //       MaterialPageRoute(
    //         builder:(context){
    //           return pages;
    //         }
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
      case "6":
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=>new DrawerPage()
            )
        );
        break;
      case "7":
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=>new ButtonPage()
            )
        );
        break;
          case "9":
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)=>new TextFieldPage()
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
  const Choice(title:"导航栏组件",subtitle:"常见导航栏组件",indexs:"1"),
  const Choice(title:"导航栏组件",subtitle:"中间嵌入的底部导航栏组件",indexs:"2"),
  const Choice(title:"AppBar Tabs",subtitle:"悬浮在AppBar下面的tabs",indexs:"3"),
  const Choice(title:"路由动画",subtitle:"常见的动画",indexs:"4"),
  const Choice(title:"Row/Column",subtitle:"水平/垂直布局",indexs:"5"),
  const Choice(title:"Drawer",subtitle:"侧边抽屉菜单栏",indexs:"6"),
  const Choice(title:"Button",subtitle:"按钮",indexs:"7"),
  const Choice(title:"PopupMenuButton",subtitle:"弹出式菜单列表",indexs:"8"),
  const Choice(title:"ButtonBar",subtitle:"水平排列的按钮组",indexs:"8"),
  const Choice(title:"TextField",subtitle:"文本输入框",indexs:"9"),
  const Choice(title:"Checkbox",subtitle:"复选框",indexs:"10"),
  const Choice(title:"Radio",subtitle:"单选框",indexs:"11"),
  const Choice(title:"Switch",subtitle:"切换按钮",indexs:"12"),
  const Choice(title:"Slider",subtitle:"滑块",indexs:"13"),
  const Choice(title:"Date & Time Pickers",subtitle:"时间日期选择器",indexs:"14"),
  const Choice(title:"SimpleDialog",subtitle:"简单的对话框",indexs:"15"),
  const Choice(title:"AlertDialog",subtitle:"确认框",indexs:"16"),
  const Choice(title:"BottomSheet",subtitle:"底部弹出框",indexs:"17"),
  const Choice(title:"ExpansionPanel",subtitle:"未知",indexs:"18"),
  const Choice(title:"SnackBar",subtitle:"轻量的在屏幕底部信息提示",indexs:"19"),
  const Choice(title:"Image",subtitle:"图片组件",indexs:"20"),
  const Choice(title:"Icon",subtitle:"小图标",indexs:"21"),
  const Choice(title:"Chip",subtitle:"标签",indexs:"22"),
  const Choice(title:"Tooltip",subtitle:"标签",indexs:"22"),
  const Choice(title:"DataTable",subtitle:"标签",indexs:"22"),
  const Choice(title:"Card",subtitle:"标签",indexs:"22"),
  const Choice(title:"LinearProgressIndicator",subtitle:"标签",indexs:"22"),
  const Choice(title:"Stepper",subtitle:"标签",indexs:"22"),
  const Choice(title:"Divider",subtitle:"标签",indexs:"22"),
];

