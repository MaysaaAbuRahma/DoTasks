import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addaskCallback;
  const AddTaskScreen(this.addaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "AddTask",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.brown[500],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);

              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 24, 14, 10),
            ),
            child: Text(
              "ِADD",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
