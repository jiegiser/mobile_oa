//业务类型---高级查询中的--下拉菜单
import 'package:flutter/material.dart';
class LearnDropdownButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnDropdownButton();
  }
}
class _LearnDropdownButton extends State<LearnDropdownButton>{

  List<DropdownMenuItem> getListData(){
    List<DropdownMenuItem> items=new List();
    DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
      child:new Text('公文收文'),
      value: '1',
    );
    items.add(dropdownMenuItem1);
    DropdownMenuItem dropdownMenuItem2=new DropdownMenuItem(
      child:new Text('公文发文'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    // DropdownMenuItem dropdownMenuItem3=new DropdownMenuItem(
    //   child:new Text('3'),
    //   value: '3',
    // );
    // items.add(dropdownMenuItem3);
    // DropdownMenuItem dropdownMenuItem4=new DropdownMenuItem(
    //   child:new Text('4'),
    //   value: '4',
    // );
    // items.add(dropdownMenuItem4);
    // DropdownMenuItem dropdownMenuItem5=new DropdownMenuItem(
    //   child:new Text('5'),
    //   value: '5',
    // );
    // items.add(dropdownMenuItem5);
    // DropdownMenuItem dropdownMenuItem6=new DropdownMenuItem(
    //   child:new Text('6'),
    //   value: '6',
    // );
    // items.add(dropdownMenuItem6);
    // DropdownMenuItem dropdownMenuItem7=new DropdownMenuItem(
    //   child:new Text('7'),
    //   value: '7',
    // );
    // items.add(dropdownMenuItem7);
    // DropdownMenuItem dropdownMenuItem8=new DropdownMenuItem(
    //   child:new Text('8'),
    //   value: '8',
    // );
    // items.add(dropdownMenuItem8);
    // DropdownMenuItem dropdownMenuItem9=new DropdownMenuItem(
    //   child:new Text('9'),
    //   value: '9',
    // );
    // items.add(dropdownMenuItem9);
    // DropdownMenuItem dropdownMenuItem10=new DropdownMenuItem(
    //   child:new Text('10'),
    //   value: '10',
    // );
    // items.add(dropdownMenuItem10);
    return items;
  }

  var value;

/*  _LearnDropdownButton(){
    value=getListData()[0].value;
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: FormField(
        builder: (FormFieldState state){
          return InputDecorator(
            decoration: InputDecoration(
              icon: const Icon(Icons.color_lens),
              //labelText: '业务类型',
            ),
            //isEmpty: _color == '',
            child: new DropdownButtonHideUnderline(
              child: DropdownButton(
              items: getListData(),
              hint:new Text('请选择业务类型'),//当没有默认值的时候可以设置的提示
              value: value,//下拉菜单选择完之后显示给用户的值
              onChanged: (T){//下拉菜单item点击之后的回调
                setState(() {
                  value=T;
                });
              },
              elevation: 24,//设置阴影的高度
              style: new TextStyle(//设置文本框里面文字的样式
                color: Colors.red,
                fontSize: 12.0
              ),
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
              iconSize: 30.0,//设置三角标icon的大小
              ),
            ),
          );
        },
      ),
//       body: new Column(
//         children: <Widget>[
//           new Center(
//             child: new DropdownButton(
//               items: getListData(),
//               hint:new Text('业务类型'),//当没有默认值的时候可以设置的提示
//               value: value,//下拉菜单选择完之后显示给用户的值
//               onChanged: (T){//下拉菜单item点击之后的回调
//                 setState(() {
//                   value=T;
//                 });
//               },
//               elevation: 24,//设置阴影的高度
//               style: new TextStyle(//设置文本框里面文字的样式
//                 color: Colors.red
//               ),
// //              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
//               iconSize: 50.0,//设置三角标icon的大小
//             ),
//           ),
//         ],
//       ),
    );
  }
}