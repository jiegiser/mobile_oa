import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '移动办公系统',
      theme: ThemeData.light(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}