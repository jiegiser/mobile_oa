import 'package:flutter/material.dart';
import '../data/array.dart';
import '../components/swiper.dart';
import '../components/nav.dart';
class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 2.0,
      ),
      body: Stack(
        children: <Widget>[
          Slide(data:DATA),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          ToolBox()
        ],
      ),
    );
  }
}