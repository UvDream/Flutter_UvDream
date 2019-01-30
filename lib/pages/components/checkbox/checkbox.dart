import 'package:flutter/material.dart';
class CheckBoxPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnCheckBox();
  }
}
class _LearnCheckBox extends State<CheckBoxPage>{
  bool isCheck=false;
  List<bool> isChecks=[false,false];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Checkbox(
              // 复选框的值
              value: isCheck,
              // 选中颜色
              activeColor: Colors.red,
              // 如果为 true，那么复选框的值可以是 true，false 或 null
              // tristate: true,
              // 点击区域尺寸，padded：向四周扩展48px区域 shrinkWrap：控件区域
              materialTapTargetSize:MaterialTapTargetSize.padded,
              onChanged: (bool){
                setState(() {
                  isCheck=bool;
                });
              },
            ),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('第一个'),
                subtitle: Text("副标题"),
                secondary: Icon(Icons.ac_unit),
                // 文字是否高亮
                selected: true,
                // 标题字体变小
                dense: true,
                // 是否三行
                isThreeLine: true,
                // 将控件放在何处相对于文本,leading 按钮显示在文字前面,platform,trailing 按钮显示在文字后面
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('第二个'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isChecks[0],
                title: new Text('第三个'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[0]=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isChecks[1],
                title: new Text('第四个'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[1]=bool;
                  });
                }),
          )
        ],
      )
    );
  }
}