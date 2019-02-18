/*
 * @Author: wangzhongjie
 * @Date: 2019-01-30 13:37:37
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-01-30 14:54:14
 * @Description: 弹出式菜单
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
class PopupMenuButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹出式菜单"),
        actions: <Widget>[
          PopupMenuButton(
            // 长按文字提示
            tooltip: "菜单哇",
            // Icon内边距
            padding: EdgeInsets.all(10),
            // 修改默认小图标
            icon: Icon(Icons.access_alarm),
            itemBuilder: (BuildContext context)=><PopupMenuEntry<String>>[
                PopupMenuItem(
                  child: Text("菜单"),
                ),
                PopupMenuDivider(),
                CheckedPopupMenuItem(
                  checked: false,
                  value: "呵呵",
                  child: Text("选项"),
                )
            ],
          )
        ],
      ),
      body: Text("弹出式菜单"),
    );
  }
}

