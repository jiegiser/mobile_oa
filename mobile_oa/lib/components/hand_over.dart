// import 'package:flutter/cupertino.dart';

// //移交组件
// class HandOver extends StatefulWidget {
//   @override
//   _HandOverState createState() => _HandOverState();
// }

// class _HandOverState extends State<HandOver> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // 移交组件--分为机构树以及点击选择显示移交的人员组件--这里进行抽离两个组件
//       child: Text('移交页面'),
//     );
//   }
// }

/*
右侧滑动-高级搜索
 */
import 'package:flutter/material.dart';
import '../components/yewuleixin_dropdownButton.dart';

class HandOver extends StatelessWidget {
  const HandOver({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var value;

    //   String dropdownValue = 'One';
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 130.0),
                    child: Text(
                      "移交",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            new Divider(),
            // Container(
            //   height: 150.0,
            //   child: LearnDropdownButton(),
            // ),
            // Expanded(
            //   child: LearnDropdownButton(),
            // ),
            Expanded(
              child: Text('移交页面'),
            ),
          ],
        ),
      ),
    );
  }
}


