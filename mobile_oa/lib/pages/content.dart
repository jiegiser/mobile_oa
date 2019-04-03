/* 
主页面----组件
主要是通过下面的bottom的工具条进行加载：首页、消息页、主页、我的 四个页面，
*/
import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
void main()=> runApp(new Content());
class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter bottomNavigationBar',
      theme:ThemeData.light(),
      home:BottomNavigationWidget()
    );
  }
}