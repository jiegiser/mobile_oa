/*
右侧滑动-高级搜索
 */
import 'package:flutter/material.dart';
import '../components/yewuleixin_dropdownButton.dart';

class QueryDrawer extends StatelessWidget {
  const QueryDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> getListData() {
      List<DropdownMenuItem> items = new List();
      DropdownMenuItem dropdownMenuItem1 = new DropdownMenuItem(
        child: new Text('公文收文'),
        value: '1',
      );
      items.add(dropdownMenuItem1);
      DropdownMenuItem dropdownMenuItem2 = new DropdownMenuItem(
        child: new Text('公文发文'),
        value: '2',
      );
      items.add(dropdownMenuItem2);
      return items;
    }

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
                      "高级查询",
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
              child: ListView(
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(left: 5.0),
                    // child: Row(
                    //   children: <Widget>[
                    //     Icon(Icons.assessment),
                    //     Container(margin: EdgeInsets.only(left: 10.0)),
                    //     DropdownButton<String>(
                    //       //value: dropdownValue,
                    //       hint: new Text('请选择业务类型'),
                    //       onChanged: (String newValue) {},
                    //       items: <String>['公文收文', '公文发文', '矿业权', '处室发文']
                    //           .map<DropdownMenuItem<String>>((String value) {
                    //         return DropdownMenuItem<String>(
                    //           value: value,
                    //           child: Text(value),
                    //         );
                    //       }).toList(),
                    //     )
                    //   ],
                    // )
                    child: FormField(
                      builder: (FormFieldState state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.assessment),
                            //labelText: '业务类型',
                          ),
                          //isEmpty: _color == '',
                          child: new DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                            value: value, //下拉菜单选择完之后显示给用户的值
                            hint: new Text('请选择业务类型'),
                            onChanged: (T) {
                              value = T;
                            },
                            items: <String>['公文收文', '公文发文', '矿业权', '处室发文']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                        );
                      },
                    ),
                  ),
                  // ListTile(
                  //   leading: const Icon(Icons.add),
                  //   title: const Text('Add account'),
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.settings),
                  //   title: const Text('Manage accounts'),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.only(left: 10.0,right: 10.0,),
                  //   child: TextField(

                  //   decoration: InputDecoration(
                  //       labelText: "提交人",
                  //       //contentPadding: const EdgeInsets.all(10.0),
                  //       prefixIcon: Icon(Icons.search)),
                  //   onChanged: (val) {
                  //     print(val);
                  //   },
                  // ),
                  // ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.assessment),
                      hintText: '提交人',
                      labelText: '提交人',
                    ),
                    //keyboardType: TextInputType.datetime,
                  ),
                  Row(
                    children: <Widget>[
                      // new MaterialButton(
                      //   child: new Text('选择时间'),
                      //   onPressed: () {
                      //     showTimePicker(
                      //       context: context,
                      //       initialTime: new TimeOfDay.now(),
                      //     ).then((val) {
                      //       print(val);
                      //     }).catchError((err) {
                      //       print(err);
                      //     });
                      //   },
                      // ),
                      Container(
                        //padding: EdgeInsets.only(left: 20.0),
                        width: 250.0,
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.lock_open),
                            hintText: '提交日期起',
                            labelText: '提交日期起',
                          ),
                          //keyboardType: TextInputType.datetime,
                        ),
                      ),
                      new IconButton(
                        color: Colors.blue,
                        icon: Icon(Icons.access_time),
                        tooltip: '选择时间',
                        onPressed: () {
                          // 调用函数打开
                          showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: new DateTime.now()
                                .subtract(new Duration(days: 30)), // 减 30 天
                            lastDate: new DateTime.now()
                                .add(new Duration(days: 30)), // 加 30 天
                          ).then((DateTime val) {
                            print(val); // 2018-07-12 00:00:00.000
                          }).catchError((err) {
                            print(err);
                          });
                        },
                      ),
                      // new MaterialButton(

                      //   child: new Text('提交日期起'),
                      //   onPressed: () {
                      //     // 调用函数打开
                      //     showDatePicker(
                      //       context: context,
                      //       initialDate: new DateTime.now(),
                      //       firstDate: new DateTime.now()
                      //           .subtract(new Duration(days: 30)), // 减 30 天
                      //       lastDate: new DateTime.now()
                      //           .add(new Duration(days: 30)), // 加 30 天
                      //     ).then((DateTime val) {
                      //       print(val); // 2018-07-12 00:00:00.000
                      //     }).catchError((err) {
                      //       print(err);
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // new MaterialButton(
                      //   child: new Text('选择时间'),
                      //   onPressed: () {
                      //     showTimePicker(
                      //       context: context,
                      //       initialTime: new TimeOfDay.now(),
                      //     ).then((val) {
                      //       print(val);
                      //     }).catchError((err) {
                      //       print(err);
                      //     });
                      //   },
                      // ),
                      Container(
                        //padding: EdgeInsets.only(left: 20.0),
                        width: 250.0,
                        child: new TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.lock_outline),
                            hintText: '提交日期止',
                            labelText: '提交日期止',
                          ),
                          //keyboardType: TextInputType.datetime,
                        ),
                      ),
                      new IconButton(
                        color: Colors.blue,
                        icon: Icon(Icons.access_time),
                        tooltip: '选择时间',
                        onPressed: () {
                          // 调用函数打开
                          showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: new DateTime.now()
                                .subtract(new Duration(days: 30)), // 减 30 天
                            lastDate: new DateTime.now()
                                .add(new Duration(days: 30)), // 加 30 天
                          ).then((DateTime val) {
                            print(val); // 2018-07-12 00:00:00.000
                          }).catchError((err) {
                            print(err);
                          });
                        },
                      ),
                      // new MaterialButton(

                      //   child: new Text('提交日期起'),
                      //   onPressed: () {
                      //     // 调用函数打开
                      //     showDatePicker(
                      //       context: context,
                      //       initialDate: new DateTime.now(),
                      //       firstDate: new DateTime.now()
                      //           .subtract(new Duration(days: 30)), // 减 30 天
                      //       lastDate: new DateTime.now()
                      //           .add(new Duration(days: 30)), // 加 30 天
                      //     ).then((DateTime val) {
                      //       print(val); // 2018-07-12 00:00:00.000
                      //     }).catchError((err) {
                      //       print(err);
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(40.0),
                  ),
                  Row(
                    
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                      ),
                      new MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: new Text('关闭'),
                        onPressed: () {
                          // ...
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 50.0),
                      ),
                      new MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: new Text('查询'),
                        onPressed: () {
                          // ...
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
