/*
 * @Author: wangzhongjie
 * @Date: 2019-01-30 15:24:15
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-01-30 16:58:24
 * @Description: 单选框
 * @Email: uvdream@163.com
 */

import 'package:flutter/material.dart';
class RadioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RaidoPage();
  }
}
class _RaidoPage extends State<RadioPage>{
  bool isCheck=false;
  String _value = '语文';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Radio(
              // 选中颜色
              activeColor: Colors.red,
              // 多单选框的值
              groupValue: isCheck,
              // 单选框的值
              value: true,
              onChanged: (bool){
                print(bool);
                setState(() {
                  isCheck=bool;
                });
              },
            ),
            RadioListTile(
              value: '语文',
              title: Text('语文'),
              groupValue: _value,
              onChanged: (bool) {
                setState(() {
                  _value = bool;
                });
              },
            ),
             RadioListTile(
              value: '数学',
              title: Text('数学'),
              groupValue: _value,
              onChanged: (bool) {
                setState(() {
                  _value = bool;
                });
              },
            ),
            Switch(
              value: isCheck,
              // 非激活时圆点颜色
              inactiveThumbColor: Colors.orange,
              // 非激活时横条颜色
              inactiveTrackColor: Colors.yellow,
              // 非激活时圆点照片
              // inactiveThumbImage: ,
              // 激活时圆点的颜色
              activeColor: Colors.red,
              // 激活时横条的颜色
              activeTrackColor: Colors.green,
              // 激活时圆点照片
              // activeThumbImage: AssetImage(
              //   ''
              // ),
              // 点击区域
              materialTapTargetSize:MaterialTapTargetSize.padded,
              onChanged: (bool) {
                  this.setState(() {
                      isCheck = bool;
                  });
              },
            )
          ],
        )
      ),
    );
  }
}