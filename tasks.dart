import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:tasks/Widgets/taskList.dart';
import 'package:tasks/Widgets/taskList.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/task_data.dart';

//import '../models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index) {
          return TasksTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxChange: (newValue) {
              taskData.updateTask(taskData.tasks[index]);
            },
            ListTileDelet: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
      );
    });
    //ListView(children: [
    //   TasksTile(
    //     taskTitle: tasks[0].name,
    //     isChecked: tasks[0].isDone,
    //   ),
    //   TasksTile(
    //     taskTitle: tasks[1].name,
    //     isChecked: tasks[1].isDone,
    //   ),
    //   TasksTile(
    //     taskTitle: tasks[2].name,
    //     isChecked: tasks[2].isDone,
    //   ),
    // ]);
  }
}
