/*
 * @Author: wangzhongjie
 * @Date: 2019-01-25 10:28:43
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-01-25 17:19:22
 * @Description: 输入框
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
class TextFieldPage extends StatelessWidget {
  void _textFieldChanged(String str) {
    print(str);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Divider(),
           Row(
                children: <Widget>[
                  Text("输入框"),
                  Expanded(
                      child: TextField(
                        // 为true的时候长按会显示系统粘贴板的内容
                        enableInteractiveSelection: false,
                        // 禁止输入
                        enabled: true,
                        // 聚焦点颜色
                        cursorColor: Colors.red,
                        //聚焦点圆边角
                        cursorRadius: Radius.circular(10),
                        // 聚焦点宽度
                        cursorWidth: 1,
                        // 自动获取焦点
                        autofocus: false,
                        // 长度限制
                        // maxLength: 5,
                        // 是否为密码
                        obscureText: false,
                        // 输入框类型
                        keyboardType:TextInputType.number,
                        // 文本对齐方式
                        textAlign: TextAlign.center,
                        // 最大行数
                        maxLines: 1,
                        // 是否自动更正
                        autocorrect:true,
                        // 值改变事件
                        onChanged:_textFieldChanged,
                        //用户完成内容
                        onSubmitted:(text){},
                        // 内容提交(按回车键)
                        onEditingComplete:(){},
                        decoration: InputDecoration(
                            // 初始化的输入框比较高,这个解决高度
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: "输入",
                          hintText:"这就是那个啥",
                          helperText: "请输入你的输入",
                          border: OutlineInputBorder(
                            // 圆边角
                            borderRadius: BorderRadius.circular(15.0)
                          )
                        ),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}