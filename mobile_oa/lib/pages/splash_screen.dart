import 'package:flutter/material.dart';
import 'logon_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller=AnimationController(vsync:this, duration: Duration(milliseconds: 3000));
    _animation=Tween(begin: 0.0,end: 1.0).animate(_controller);
    /*动画事件监听器，
    它可以监听到动画的执行状态，
    我们这里只监听动画是否结束，
    如果结束则执行页面跳转动作。 */
    _animation.addStatusListener((status){
      if(status==AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context)=>Longon()), 
            (route)=> route==null
        );
      }
    });
    // 播放动画
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // 透明度动画组件
    return FadeTransition(
      // 执行动画
      opacity: _animation,
      child: Image.asset('images/bg.jpg'),
    );
  }
}