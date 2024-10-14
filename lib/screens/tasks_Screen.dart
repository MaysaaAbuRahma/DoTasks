import 'package:flutter/material.dart';
//import 'package:tasks/Widgets/tasks_Lists.dart';
import 'package:provider/provider.dart';
import '../Widgets/tasks_Lists.dart';
import '../models/task_data.dart';
import 'add_task_scren.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen((newTaskTitle) {
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTitle));
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        backgroundColor: Colors.red[800],
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 58, 11, 3),
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(
            children: [
              Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
              SizedBox(
                width: 20,
              ),
              Text(
                "SomeTasks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            "${Provider.of<TaskData>(context).tasks.length} Tasks",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              //height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 151, 134, 128),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: TasksList(),
            ),
          )
        ]),
      ),
    );
  }
}
