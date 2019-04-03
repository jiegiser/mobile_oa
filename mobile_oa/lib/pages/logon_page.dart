import 'package:flutter/material.dart';

// 引入的一个第三方加载提示组件flutter_spinkit
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter/rendering.dart';

import './content.dart';

class Longon extends StatefulWidget {
  @override
  _LongonState createState() {
    return new _LongonState();
  }
}

class _LongonState extends State<Longon> {
  final _formKey = GlobalKey<FormState>();
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _showLoading = false;

  Future _loginRequest() async {
    return Future.delayed(Duration(seconds: 3), () {
      print('登录成功');
    });
  }

  // 点击登录
  void _toggleSubmit() {
    if (_formKey.currentState.validate()) {
      setState(() {
        _showLoading = true;
      });
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              //跳转到主页面
              builder: (context) => Content()),
          (route) => route == null);
      // showDialog(
      //     context: context,
      //     builder: (context) {
      //       String alertText = "登录成功" +
      //           "\nuserName" +
      //           _userNameTextController.text +
      //           "\npassword" +
      //           _passwordTextController.text;
      //       return AlertDialog(
      //         content: Text(alertText),
      //       );
      //     });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> childrens = [];
    final _mainContainer = Container(
      height: 1000.0,
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.fill)),
      padding: EdgeInsets.all(15.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text('娄底市国土资源与自然规划局',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text('移动办公平台',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: '用户名',
                //labelText: '提交人',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return '请输入用户名';
                }
              },
              controller: _userNameTextController,
              //keyboardType: TextInputType.datetime,
            ),
            TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.lock_outline),
                  hintText: '密码',
                  //labelText: '提交人',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return '请输入密码';
                  }
                },
                controller: _passwordTextController,
                obscureText: true
                //keyboardType: TextInputType.datetime,
                ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: '用户名',
            //   ),
            //   validator: (value) {
            //     if (value.isEmpty) {
            //       return '请输入用户名';
            //     }
            //   },
            //   controller: _userNameTextController,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: '密码',
            //   ),
            //   validator: (value) {
            //     if (value.isEmpty) {
            //       return '请输入密码';
            //     }
            //   },
            //   controller: _passwordTextController,
            //   obscureText: true
            // ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
            ),
            SizedBox(
              width: double.infinity,
              height: 35.0,
              child: RaisedButton(
                onPressed: _toggleSubmit,
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
    // 定义一个加载动画
    final _loadingContainer = Container(
      constraints: BoxConstraints.expand(),
      color: Colors.black12,
      child: Opacity(
        opacity: 0.9,
        child: SpinKitWave(
          color: Colors.red,
          size: 30.0,
        ),
      ),
    );
    childrens.add(_mainContainer);
    if (_showLoading) {
      childrens.add(_loadingContainer);
    }
    return Scaffold(
      body: Stack(
        children: childrens,
      ),
    );
  }
}
