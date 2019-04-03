import 'package:flutter/material.dart';

// 公文中内容列表
class GWInfo extends StatefulWidget {
  @override
  _GWInfoState createState() => _GWInfoState();
}

class _GWInfoState extends State<GWInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Stack(
      //   //案卷编号
      //   // 公文标题
      //   // 类型
      //   // 文号
      //   // 缓急
      //   // 文号
      //   // 密级
      //   // 抄送
      //   // 关联公文

      //   // 附件列表-----抽离插件file_list
      // ),
      padding: EdgeInsets.all(50.0),
      child: DefaultTextStyle(
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
              "案卷编号：GWSW20190312012561",
              style: TextStyle(
                  //2.不继承默认样式
                  inherit: false,
                  color: Colors.blue[800],
                  fontSize: 12.0),
                  
            ),
            Text("                          "),
            Text("公文标题：测试"),
            Text("                          "),
            Text(
              "来文单位：公文收文",
            ),
            Text("                          "),
            Text(
              "文号：领导审批",
            ),
            Text("                          "),
            Text(
              "编号：领导审批",
            ),
            Text("                          "),
            Text(
              "收文单位：前台管理员",
            ),
            Text("                          "),
            Text(
              "收文人：administrator",
            ),
            Text("                          "),
            Text(
              "收文时间：2019/3/12 0:00:00",
            ),
          ],
        ),
      ),
    );
  }
}
