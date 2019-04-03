import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 120.0,
        width: 320.0,
        child: Stack(
          alignment: const FractionalOffset(0.1, 0.1),
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              child: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://avatar.csdn.net/B/9/8/3_cj9551.jpg'),
                radius: 100.0,
              ),
            ),
            // new Container(

            //   decoration: new BoxDecoration(
            //     color: Colors.lightBlue,
            //   ),
            //   padding: EdgeInsets.all(5.0),
            //   child: new Text('jiegiser'),
            // ),
            new Positioned(
              bottom: 25,
              right: 60.0,
              child: new Text('系统管理员',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
            ),
            new Positioned(
              bottom: 28.0,
              right: 10.0,
              child: new Text('jiegiser'),
            ),
            new Positioned(
              bottom: 5.0,
              right: 60.0,
              child: new Text('18809465979'),
            )
          ],
        ),
      ),
    );
    var listView = new ListView(
      padding: EdgeInsets.only(top: 165.0),
      children: <Widget>[
        Container(
          height: 40.0,
          child: ListTile(
            title: new Text(
              '修改密码',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            leading: new Icon(
              Icons.description,
              color: Colors.lightBlue,
            ),
            trailing:
                new Icon(Icons.keyboard_arrow_right, color: Colors.grey[300]),
          ),
        ),
        new Divider(),
        Container(
          height: 40.0,
          child: ListTile(
            title: new Text(
              '帮助中心',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            leading: new Icon(
              Icons.description,
              color: Colors.lightBlue,
            ),
            trailing:
                new Icon(Icons.keyboard_arrow_right, color: Colors.grey[300]),
          ),
        ),
        new Divider(),
        Container(
          height: 40.0,
          child: ListTile(
            title: new Text(
              '清除缓存',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            leading: new Icon(
              Icons.description,
              color: Colors.lightBlue,
            ),
            trailing:
                new Icon(Icons.keyboard_arrow_right, color: Colors.grey[300]),
          ),
        ),
        new Divider(),
        Container(
          height: 40.0,
          child: ListTile(
            title: new Text(
              '退出登录',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            leading: new Icon(
              Icons.description,
              color: Colors.lightBlue,
            ),
            trailing:
                new Icon(Icons.keyboard_arrow_right, color: Colors.grey[300]),
          ),
        ),
        new Divider(),
      ],
    );
    return Scaffold(
        appBar: new AppBar(
          title: new Text('我的'),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              card,
              listView,
            ],
          ),
        ));
  }
}
