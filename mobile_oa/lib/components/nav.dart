/*
主页面---包括工具栏以及轮播图加载组件
 */
import 'package:flutter/material.dart';
import '../pages/IpadCase/casedoing_page.dart';
import '../pages/IpadCase/gwdoing_page.dart';
import '../pages/HandOver/view/AccountDetail.dart';
import '../pages/HandOver/view/AccountList.dart';

class ToolBox extends StatefulWidget {
  _ToolBoxState createState() => _ToolBoxState();
}

class _ToolBoxState extends State<ToolBox> {
  String imgsrc = 'http://5b0988e595225.cdn.sohucs.com/images' +
      '/20171218/342e43903694448b91698b5ce7623314.jpeg';

  // List<Widget> buildGridTileList(int number) {
  //   List<Widget> widgetList = new List();

  //   for (int i = 0; i < number; i++) {
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.library_books,size: 40.0,),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('待办事项',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //   }
  //   return widgetList;
  // }

  // List<Widget> buildGridTileList() {
  //   List<Widget> widgetList = new List();
  //     widgetList.add(
  //       new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           IconButton(
  //             icon:Icon(IconData(57391, fontFamily: 'MaterialIcons'),color: Colors.green[400],),
  //             iconSize: 40.0,
  //             onPressed:mess,
  //             ),
  //           // Padding(
  //           //   padding: EdgeInsets.only(top: 4.0),
  //           // ),
  //           Text('待办事项',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ),
  //               ),
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),

  //     )
  //     );
  //     //公文收文
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.library_add,size: 40.0,color: Colors.blue[600],),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('公文收文',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),

  //     ),
  //     );
  //     //公文发文
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.open_in_browser,size: 40.0,color: Colors.red[300],),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('公文发文',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //     //日程安排
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.format_list_bulleted,size: 40.0,color: Colors.green[400]),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('日程安排',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //     //综合新闻
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.fiber_new,size: 40.0,color: Colors.orange[200],),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('综合新闻',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //     //内部邮件
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.email,size: 40.0,color: Colors.red[800]),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('内部邮件',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //     //通讯录
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.contacts,size: 40.0,color: Colors.red[200]),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('通讯录',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //     //旧系统
  //     widgetList.add(new Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Icon(Icons.library_books,size: 40.0,color: Colors.blue[200]),
  //           Padding(
  //             padding: EdgeInsets.only(top: 8.0),
  //           ),
  //           Text('旧系统',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: 10.0,
  //                 color: Colors.black,
  //                 //fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //       decoration: new BoxDecoration(
  //         color: Colors.white,
  //         //shape: BoxShape.circle,
  //         boxShadow: <BoxShadow>[
  //           new BoxShadow(
  //             offset: new Offset(0.0, 0.0),
  //             blurRadius: 0.1,
  //             color: const Color(0xffaaaaaa),
  //           ),
  //         ],
  //       ),
  //     ));
  //   return widgetList;
  // }

  // //弹框
  //   Widget getDialog() {
  //   return new AlertDialog(
  //     title: new Text("点击提示"),
  //     content: new SingleChildScrollView(
  //         child: new ListBody(children: <Widget>[new Text("你点击了Item")])),
  //     actions: <Widget>[
  //       new FlatButton(
  //         child: new Text("取消"),
  //         onPressed: () {//按钮点击事件
  //           Navigator.of(context).pop();
  //         },
  //       ),
  //       new FlatButton(
  //         child: new Text("确认"),
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //       ),
  //     ],
  //   );
  // }
  // showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         getDialog();
  //   });
  mess(e) {
    print(e);
  }

  void casedoing() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new CaseDoing();
    }));
  }

  void gwdoing() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new GWDoing();
    }));
  }
  void handover() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return AccountList("dfsdfd");
    }));
  }
  List<Widget> buildGridTileList(context) {
    List<Widget> widgetList = new List();
    widgetList.add(new Container(
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(top: 17.0, left: 23.0),
            icon: Icon(
              IconData(57391, fontFamily: 'MaterialIcons'),
              color: Colors.green[400],
            ),
            iconSize: 40.0,
            onPressed: casedoing,
          ),
          new Positioned(
            bottom: 10.0,
            right: 26.0,
            child: new Text('待办事项',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                )),
          ),
          new Positioned(
            bottom: 65.0,
            right: 5.0,
            child: CircleAvatar(
              child: Text(
                '15',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              radius: 10,
              backgroundColor: Colors.red[600],
            ),
          ),
          // Text(
          //   '待办事项',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 10.0,
          //     color: Colors.black,
          //     //fontWeight: FontWeight.bold,
          //   ),
          // ),
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        //盒子的阴影
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
        //盒子圆角
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
        // 盒子的边框
        // border: Border(
        //     top: BorderSide(width: 0.1, color: Colors.lightBlue.shade50),
        //     bottom: BorderSide(width: 0.1, color: Colors.lightBlue.shade900),
        // )
      ),
    ));
    //公文收文
    widgetList.add(
      new Container(
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     IconButton(
        //       icon: Icon(
        //         IconData(57390, fontFamily: 'MaterialIcons'),
        //         color: Colors.blue[600],
        //       ),
        //       iconSize: 40.0,
        //       onPressed: gwdoing,
        //     ),
        //     Text('公文收文',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           fontSize: 10.0,
        //           color: Colors.black,
        //           //fontWeight: FontWeight.bold,
        //         ))
        //   ],
        // ),
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.only(top: 17.0, left: 23.0),
              icon: Icon(
                IconData(57390, fontFamily: 'MaterialIcons'),
                color: Colors.blue[600],
              ),
              iconSize: 40.0,
              onPressed: gwdoing,
            ),
            new Positioned(
              bottom: 10.0,
              right: 26.0,
              child: new Text('公文收文',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                  )),
            ),
            new Positioned(
              bottom: 65.0,
              right: 5.0,
              child: CircleAvatar(
                child: Text(
                  '15',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                radius: 10,
                backgroundColor: Colors.red[600],
              ),
            ),
          ],
        ),
        decoration: new BoxDecoration(
          color: Colors.white,
          //shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            new BoxShadow(
              offset: new Offset(0.0, 0.0),
              blurRadius: 0.1,
              color: const Color(0xffaaaaaa),
            ),
          ],
        ),
      ),
    );
    //公文发文
    widgetList.add(new Container(
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         IconData(59549, fontFamily: 'MaterialIcons'),
      //         color: Colors.red[300],
      //       ),
      //       iconSize: 40.0,
      //       onPressed: gwdoing,
      //     ),
      //     Text('公文发文',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           fontSize: 10.0,
      //           color: Colors.black,
      //           //fontWeight: FontWeight.bold,
      //         ))
      //   ],
      // ),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(top: 17.0, left: 23.0),
            icon: Icon(
              IconData(59549, fontFamily: 'MaterialIcons'),
              color: Colors.red[300],
            ),
            iconSize: 40.0,
            onPressed: gwdoing,
          ),
          new Positioned(
            bottom: 10.0,
            right: 26.0,
            child: new Text('公文发文',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                )),
          ),
          new Positioned(
            bottom: 65.0,
            right: 5.0,
            child: CircleAvatar(
              child: Text(
                '15',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              radius: 10,
              backgroundColor: Colors.red[600],
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //日程安排
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57921,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              color: Colors.green[400],
            ),
            iconSize: 40.0,
            onPressed: handover,
          ),
          Text('日程安排',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //综合新闻
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57438, fontFamily: 'MaterialIcons'),
              color: Colors.orange[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('综合新闻',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //内部邮件
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57534, fontFamily: 'MaterialIcons'),
              color: Colors.red[800],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('内部邮件',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //通讯录
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57530, fontFamily: 'MaterialIcons'),
              color: Colors.red[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('通讯录',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //旧系统
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57391, fontFamily: 'MaterialIcons'),
              color: Colors.blue[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('旧系统',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));

    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57391, fontFamily: 'MaterialIcons'),
              color: Colors.green[400],
            ),
            iconSize: 40.0,
            onPressed: casedoing,
          ),
          Text(
            '待办事项',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.black,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //公文收文
    widgetList.add(
      new Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                IconData(57390, fontFamily: 'MaterialIcons'),
                color: Colors.blue[600],
              ),
              iconSize: 40.0,
              onPressed: gwdoing,
            ),
            Text('公文收文',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ))
          ],
        ),
        decoration: new BoxDecoration(
          color: Colors.white,
          //shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            new BoxShadow(
              offset: new Offset(0.0, 0.0),
              blurRadius: 0.1,
              color: const Color(0xffaaaaaa),
            ),
          ],
        ),
      ),
    );
    //公文发文
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(59549, fontFamily: 'MaterialIcons'),
              color: Colors.red[300],
            ),
            iconSize: 40.0,
            onPressed: gwdoing,
          ),
          Text('公文发文',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //日程安排
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57921,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              color: Colors.green[400],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('日程安排',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //综合新闻
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57438, fontFamily: 'MaterialIcons'),
              color: Colors.orange[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('综合新闻',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //内部邮件
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57534, fontFamily: 'MaterialIcons'),
              color: Colors.red[800],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('内部邮件',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //通讯录
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57530, fontFamily: 'MaterialIcons'),
              color: Colors.red[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('通讯录',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    //旧系统
    widgetList.add(new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              IconData(57391, fontFamily: 'MaterialIcons'),
              color: Colors.blue[200],
            ),
            iconSize: 40.0,
            onPressed: mess(this.context),
          ),
          Text('旧系统',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ))
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            offset: new Offset(0.0, 0.0),
            blurRadius: 0.1,
            color: const Color(0xffaaaaaa),
          ),
        ],
      ),
    ));
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 350.0,
        margin: EdgeInsets.only(top: 220.0),
        child: // GridView 默认滚动方向是垂直的。
            new GridView.count(
          //padding: const EdgeInsets.all(8.0),
          primary: false,
          mainAxisSpacing: 0.25, // 竖向间距
          crossAxisCount: 4, // 横向 Item 的个数
          crossAxisSpacing: 0.25, // 横向间距
          children: buildGridTileList(context),
        ));
  }
}
