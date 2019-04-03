import 'package:flutter/material.dart';
import '../../components/query_drawer.dart';
import '../../data/assets.dart';
import '../gw_sw_page.dart';
// class CaseDoing extends StatefulWidget {
//   final Widget child;

//   CaseDoing({Key key, this.child}) : super(key: key);

//   _CaseDoingState createState() => _CaseDoingState();
// }

// class _CaseDoingState extends State<CaseDoing> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: widget.child,
//     );
//   }
// }

class GWDoing extends StatefulWidget {
  _GWDoingState createState() => _GWDoingState();
}

class _GWDoingState extends State<GWDoing> {
    void casedoing() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new GWSW();
    }));
  }
  void query() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //左侧打开抽屉
      // drawer: Drawer(
      //   elevation: 2.0,
      // ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          '                    公文收文',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.notifications),
          //   tooltip: '消息',
          //   onPressed: (){},
          // ),
          // 弹出菜单，
          // PopupMenuButton(
          //   icon: Icon(Icons.more_vert),
          //   itemBuilder: (BuildContext context)=><PopupMenuItem>[
          //     PopupMenuItem(
          //       value: 'A',
          //       child: Text('关于'),
          //     ),
          //   ],
          // )

          // Drawer(
          //   elevation: 2.0,
          // ),
          // PopupMenuButton(
          //   icon: Icon(Icons.more_vert),
          //   itemBuilder: (BuildContext context)=><PopupMenuItem>[
          //     PopupMenuItem(
          //       value: 'A',
          //       child: Text('关于'),
          //     ),
          //   ],
          // )
          // IconButton(
          //   icon: Icon(Icons.more_vert,color: Colors.white,),
          //   tooltip: 'Repair it',
          //   onPressed: query,
          // ),
        ],
      ),
      //右侧打开抽屉
      endDrawer: QueryDrawer(),
      body: Container(
        child: Stack(
          children: <Widget>[
            //搜索框
            Container(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              //margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              // decoration: new BoxDecoration(
              //   color: Colors.white,
              //   //shape: BoxShape.circle,
              //   boxShadow: <BoxShadow>[
              //     new BoxShadow(
              //       offset: new Offset(0.0, 0.0),
              //       blurRadius: 1.0,
              //       color: const Color(0xffaaaaaa),
              //     ),
              //   ],
              // ),
              // child: Stack(
              //   children: <Widget>[
              //     Container(
              //       padding: EdgeInsets.only(top: 13.0),
              //       child: Icon(
              //         Icons.search,
              //       ),
              //     ),
              //     Container(
              //       padding: EdgeInsets.only(left: 13.0),
              //       child: new TextField(
              //         decoration: const InputDecoration(
              //           hintText: '搜索',
              //           contentPadding: const EdgeInsets.all(10.0),
              //         ),
              //         // 当 value 改变的时候，触发
              //         onChanged: (val) {
              //           print(val);
              //         },
              //         cursorColor:Colors.white
              //       ),
              //     ),
              //   ],
              // ),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "搜索",
                    //contentPadding: const EdgeInsets.all(10.0),
                    prefixIcon: Icon(Icons.search)),
                onChanged: (val) {
                  print(val);
                },
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 65.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text('共12条记录'),
                    color: Colors.grey[300],
                    padding: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                    //margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  ),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '1. GWFW20190312012561',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      // subtitle: Text.rich(
                      //   TextSpan(
                      //     children: [
                      //       TextSpan(text: 'sdsd',children: [TextSpan(text: 'sdsd')]),
                      //       TextSpan(text: 'sdsd',style: TextStyle(

                      //       ),
                      //       children: [
                      //         TextSpan(text: 'sdsddfsdfds')
                      //       ]
                      //       ),
                      //     ]
                      //   )
                      // ),

                      // subtitle: RichText(
                      //   text: TextSpan(
                      //       text: 'Hello ',
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 12.0,
                      //       ),
                      //       children: <TextSpan>[
                      //         TextSpan(text: 'bold',),
                      //         TextSpan(text: ' world!'),
                      //       ],
                      //   ),

                      //   maxLines: 1,
                      // ),

                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '2. GWFW20190312012562',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),

                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '3. GWFW20190312012563',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),

                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '4. GWFW20190312012564',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '5. GWFW20190312012565',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '6. GWFW20190312012566',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '7. GWFW20190312012567',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '8. GWFW20190312012568',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '9. GWFW20190312012569',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '10. GWFW20190312012510',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '11. GWFW20190312012511',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                  Container(
                    height: 95.0,
                    child: ListTile(
                      leading: new Icon(
                        Icons.description,
                        color: Colors.lightBlue,
                      ),
                      title: new Text(
                        '12. GWFW20190312012512',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      subtitle: DefaultTextStyle(
                        //1.设置文本默认样式
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.start,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "提交人：A001",
                              style: TextStyle(
                                  //2.不继承默认样式
                                  inherit: false,
                                  color: Colors.blue[800],
                                  fontSize: 12.0),
                            ),
                            Text("提交时间：2019/3/28 8:57"),
                            Text(
                              "当前流程：公文收文",
                            ),
                            Text(
                              "当前环节：领导审批",
                            ),
                          ],
                        ),
                      ),
                      trailing: new Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey[300]),
                      // isThreeLine: true,
                      onTap: casedoing,
                    ),
                  ),
                  new Divider(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            )
          ],
        ),
      ),
    );
  }
}


//搜索条=-------------未使用
class searchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                  text: TextSpan(
                      text: suggestionList[index].substring(0, query.length),
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
            ));
  }
}
