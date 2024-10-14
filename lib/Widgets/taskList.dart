import 'dart:ui';

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() ListTileDelet;
  const TasksTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.ListTileDelet});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      trailing: Checkbox(
        activeColor: Colors.red,
        value: isChecked,
        onChanged: checkboxChange,
        //onChanged: checkboxChang,
      ),
      onLongPress: ListTileDelet,
    );
  }
}



// class TaskCheckBox extends StatelessWidget {
//   final bool? checkBoxState;
//   final Function(bool?) checkboxChang;
//   TaskCheckBox(this.checkBoxState, this.checkboxChang);
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
