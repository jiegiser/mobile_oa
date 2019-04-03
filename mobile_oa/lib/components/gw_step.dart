import 'package:flutter/material.dart';

// 公文办理过程
class CaseStep extends StatefulWidget {
  @override
  _CaseStepState createState() => _CaseStepState();
}

class _CaseStepState extends State<CaseStep> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // 使用抽离的文件列表--file_list
        // 进行抽离------填写意见
        child: new Stepper(
      currentStep: 1, // <-- 激活的下标
      onStepContinue: ()=>{},

      steps: <Step>[
        new Step(
          title: new Text('办公室主任拟办'),
          content: new Text('意见：同意444444'),
          // state: StepState.complete,
          // isActive: true,
          subtitle: new Text('办公室意见'),
        ),
        new Step(
          title: new Text('领导审批'),
          subtitle: new Text('领导批示意见'),
          state: StepState.editing,
          isActive: true,
          content: new Text('意见0000.....................'),
        ),
        new Step(
          title: new Text('归档'),
          content: new Text('已归档'),
          state: StepState.complete,
          isActive: true,
        ),
         new Step(
          title: new Text('归档'),
          content: new Text('已归档'),
          state: StepState.complete,
          //isActive: true,
        ),
        new Step(
          title: new Text('办公室主任拟办'),
          content: new Text('意见：同意444444'),
          // state: StepState.complete,
          // isActive: true,
          subtitle: new Text('办公室意见'),
        ),
        
      ],
    ));
  }
}
