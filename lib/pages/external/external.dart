// import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import './index.dart';
class ExternalPage extends StatefulWidget {
  @override
  _ExternalPageState createState() => _ExternalPageState();
}

class _ExternalPageState extends State<ExternalPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("第三方")),
        body: SingleChildScrollView(
          child: DemoList(),
        ),
      ),
    );
  }
}

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: DemoLists.map((Choice item){
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
            builder:(context)=>new indexPage()
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

const List<Choice> DemoLists=const <Choice>[
  const Choice(title:"flare动画",subtitle:"flare动画使用方法",indexs:"1"),
];