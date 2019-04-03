import 'package:flutter/material.dart';
import '../components/gw_info.dart';
import '../components/gw_step.dart';
import '../components/hand_over.dart';
class GWSW extends StatefulWidget {
  final Widget child;

  GWSW({Key key, this.child}) : super(key: key);

  _GWSWState createState() => _GWSWState();
}

class _GWSWState extends State<GWSW> with SingleTickerProviderStateMixin {
  TabController _controller;
  //保持状态
  @override
  // 重写初始状态
  void initState(){
    super.initState();
    // 长度为3的垂直状态的菜单
    _controller=TabController(length: 2,vsync: this);
  }
  // 重写销毁方法
  //重写被释放的方法，只释放TabController
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '                    公文收文',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        
        /*
        TabBar是切换组件，它需要设置两个属性。
        controller: 控制器，后边跟的多是TabController组件。
        tabs：具体切换项，是一个数组，里边放的也是Tab Widget。
         */
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(text: '内容查看',),
            Tab(text: '办理过程'),
          ],
        ),
      ),
      //右侧打开抽屉
      endDrawer: HandOver(),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          // 注意，，这里的顺序与上面的tabar保持一致，，通过controller:是TabController组件进行控制
          // MyHomePage(),
          // MyHomePage(),
          // MyHomePage(),
          GWInfo(),
          CaseStep()
        ],
      ),
    );
  }
}
