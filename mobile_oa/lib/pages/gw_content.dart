import 'package:flutter/material.dart';

class GWContnet extends StatefulWidget {
  @override
  _GWContnetState createState() => _GWContnetState();
}
class _GWContnetState extends State<GWContnet> {
  @override
  /*
  页面设计：
    页面内分两部分组成，第一部分为标题以及正文移交，以及底部的内容查看、
    第二部分为内容，将内容抽离为内容查看以及办理过程两个组件
   */
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('公文发文'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            //左上角正文以及移交
            // 主内容
            // 底部----------进行抽离
          ],
        ),
      ),
    );
  }
}