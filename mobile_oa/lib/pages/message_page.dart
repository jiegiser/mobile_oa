import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../pages/IpadCase/casedoing_page.dart';
import '../pages/IpadCase/gwdoing_page.dart';
class MessageScreen extends StatelessWidget {
  //发送get请求获取数据
  void getHttp()async{
    try{
      Response response;
      Dio dio=new Dio();
      var data={'name':'jiegiser'};
      response=await dio.get(
        "https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=jj",
      );
      print(response);
    }catch(e){
      return print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
      void casedoing() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new CaseDoing();
    }));
  }
    var card = new Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              '待办事项',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('0312测试案卷'),
            leading: new Icon(
              Icons.description,
              color: Colors.lightBlue,
            ),
            onTap: casedoing,
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '会议通知',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('暂无'),
            leading: new Icon(
              Icons.notifications,
              color: Colors.lightBlue,
            ),
            //点击执行事件
            onTap: casedoing,
            //长按执行事件
            //onLongPress: getHttp,
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '日程安排',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('暂无'),
            leading: new Icon(
              Icons.recent_actors,
              color: Colors.lightBlue,
            ),
            onTap: casedoing,
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '新邮件',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('暂无'),
            leading: new Icon(
              Icons.email,
              color: Colors.lightBlue,
            ),
            onTap: casedoing,
          ),
          new Divider(),
        ],
      ),
    );
    return Scaffold(
        appBar: new AppBar(
          title: new Text('消息'),
        ),
      body: card,
    );

    // return MaterialApp(
    //   title: 'ListView widget',
    //   home: Scaffold(
    //     appBar: new AppBar(
    //       title: new Text('消息'),
    //     ),
    //     body: Scaffold(
    //       body: card,
    //       ),
    //   ),
    // );
  }
}
