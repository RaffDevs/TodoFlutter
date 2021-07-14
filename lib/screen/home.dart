import 'package:flutter/material.dart';

import 'package:todo_app/models/task.dart';
import 'package:todo_app/components/listTasks.dart';
import 'package:todo_app/components/taskForm.dart';
import '../components/overview.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  bool showCompleted = false;

  final List<Task> _tasks = [

    

  ];

  _addTask(String description) {

    setState(() {
      
      _tasks.add(Task(

        desc: description,

        finish: false

      ));

    });

  }

  _finishTask(Task task) {

    setState(() {
      
      task.completeTask();

    });

  }

  _removeTask(Task task) {

    setState(() {
      
      _tasks.removeWhere((tsk) => tsk.id == task.id );

    });

  }

  _listCompleted() {

    setState(() {
      
      showCompleted = !showCompleted;

    });

  }

  List<Task> get renderTasks {

    return showCompleted
    ? _tasks
    : _tasks.where((task) => task.finish == false).toList();

  }

  int get finishTasks {

    return _tasks.where((task) => task.finish == true).toList().length;

  }

  int get pendingTasks {

    return _tasks.where((task) => task.finish == false).toList().length;

  }

  int get todayTasks {

    return _tasks.where((task) => task.date.difference(DateTime.now()) < Duration(hours: 24)).toList().length;

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('TodoApp'),

        backgroundColor: Color(0xFF383A59),

        actions: [

          IconButton(

            icon: Icon(Icons.remove_red_eye),

            iconSize: 30,

            color: showCompleted ? Color(0xFF50fa7b) : Color(0xFF44475a),

            onPressed: _listCompleted,

          )

        ],

      ),

      backgroundColor: Color(0xFF383A59),

      body: SingleChildScrollView(

        child: Column(
      
          crossAxisAlignment: CrossAxisAlignment.stretch,
      
          children: [
      
            SizedBox(
      
              height: 20,
      
            ),
      
            Overview({

              'finish' : finishTasks,

              'pending' : pendingTasks,

              'today' : todayTasks

            }),
      
            SizedBox(
      
              height: 20,
      
            ),
      
            TaskForm(_addTask),
      
            SizedBox(
      
              height: 20,
      
            ),
      
            ListTasks(renderTasks, _finishTask, _removeTask)
      
          ],
      
        ),
      ),

    );

  }
}