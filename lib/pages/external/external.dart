// import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import './index.dart';
import './iconfont.dart';
<<<<<<< HEAD
import './Flare_status.dart';

=======
import './bessel_curve.dart';
import './wave_curve.dart';
>>>>>>> 087b66dcbe5f7e5e8214569dd050591a94a6a49a
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
        children: DemoLists.map((Choice item) {
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
                  onTap: () => _onTop(context, item.indexs)),
              new Divider()
            ],
          );
        }).toList(),
      ),
    );
  }
}

void _onTop(BuildContext context, String id) {
  switch (id) {
    case "1":
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => new FlareStatus()));
      break;
    case "2":
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => new IconFontPage()));
      break;
       case "3":
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder:(context)=>new BesselPage()
          )
        );
      break;
      case "4":
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder:(context)=>new WaveCurve()
          )
        );
      break;
  }
}

class Choice {
  const Choice({this.title, this.subtitle, this.indexs, this.pages});
  final String title;
  final String subtitle;
  final String indexs;
  final Object pages;
}

const List<Choice> DemoLists = const <Choice>[
   const Choice(title:"flare动画",subtitle:"flare动画使用方法",indexs:"1"),
  const Choice(title:"IconFont",subtitle:"小图标",indexs:"2"),
  const Choice(title:"贝赛尔曲线",subtitle:"贝赛尔曲线应用",indexs:"3"),
  const Choice(title:"波浪贝赛尔曲线",subtitle:"贝赛尔曲线应用",indexs:"4"),
];
