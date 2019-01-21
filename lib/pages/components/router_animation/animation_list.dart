import 'package:flutter/material.dart';
class AnimationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由动画"),
       
      ),
      body: new Center(
        child: AnimationList(),
      ),
    );
  }
}
class AnimationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: <Widget>[
       RaisedButton(
         child: Center(
           child: Text("data"),
         ),
         onPressed: (){},
       ),
        RaisedButton(
         child: Center(
           child: Text("data"),
         ),
         onPressed: (){},
       ),
       InkWell(

       ),
        Center(
          child: Text("data"),
        ),
         Center(
          child: Text("data"),
        ),
         Center(
          child: Text("data"),
        )
      ],
    );
  }
}