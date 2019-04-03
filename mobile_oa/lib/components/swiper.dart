import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  // 接收参数
  final List data;
  Slide({@required this.data});
  _SlideState createState() => _SlideState();
}
// 轮播组件
class _SlideState extends State<Slide> {
  // 当前位置
  int inedx=0;
  PageController controller=new PageController();
  bool runing=false;
  // 
  Widget dot(bool action){
    return Container(
      height: 7.0,
      width: 7.0,
      margin: EdgeInsets.all(3.0),
      // 盒子修饰
      decoration: BoxDecoration(
        color: action ? Color.fromRGBO(255, 255, 255, 0.82) :Color.fromRGBO(255, 255, 255, 0.36),
        borderRadius: BorderRadius.all(const Radius.circular(10.0))
      ),
    );
  }
  // 开始轮播
  void run() async{
    this.runing=true;
    while (this.runing) {
      await Future.delayed(
        Duration(seconds: 5),
      );
      this.setState((){
      this.inedx=this.inedx==widget.data.length-1 ? 0 : this.inedx+1;
      this.controller.animateToPage(
        this.inedx,
        duration: Duration(
          milliseconds: 600
        ),
        curve: Curves.easeInOut
      );
    });
    }
  }
  @override
  void initState() {
    super.initState();
    this.run();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Colors.black12,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView.custom(
          controller: this.controller,
          onPageChanged: (index){
            this.setState((){
              this.inedx=index;
            });
          },
          //内容
          childrenDelegate: SliverChildBuilderDelegate((context,index){
            var item=widget.data[index];
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  item['image'],
                  fit: BoxFit.cover,
                ),
                // 遮罩层
                Container(
                  color: Colors.black26,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 24.0),
                  child: Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                )
              ],
            );
          },
          childCount: widget.data.length,
          ),

        ),
        Container(
          height: 25.0,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: Array.map<Widget>(widget.data, (item,index){
              return dot(
                index==this.inedx
              );
            }),
          ),
        )
      ],
    ),
    );
  }
}
class  Array {
  static List<T> map<T>(List list,Function cb){
    List _list =new List<T>();
    for(var i=0;i<list.length;i++){
      _list.add(cb(list[i],i));
    }
    return _list;
  }
}