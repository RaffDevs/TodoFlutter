import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class ListTasks extends StatelessWidget {

  final List<Task> _tasks;

  final Function(Task) onCompleted;

  final Function(Task) onDelete;

  ListTasks(this._tasks, this.onCompleted, this.onDelete);

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 500,

      padding: EdgeInsets.all(10),

      child: _tasks.isEmpty ? Column(

        children: [

          Icon(
            
            Icons.mood_bad_sharp,

            size: 200,

            color: Color(0xFF6272a4),
            
          ),

          Text(
            
            'Nenhuma tarefa cadastrada!',

            style: TextStyle(

              color: Color(0xFF6272a4),

              fontSize: 20

            ),
            
          )

        ],

      ) : ListView.builder(

        itemCount : _tasks.length,

        itemBuilder: (ctx, index) {

          final task = _tasks[index];

          return Card(

            elevation: 10,

            color: Theme.of(context).primaryColor,

            child: ListTile(

              leading: IconButton(

                icon: task.finish ? Icon(Icons.done_outlined) 
                : Icon(Icons.check_box_outline_blank_outlined),

                iconSize: 30,

                color: Color(0xFF50fa7b),

                onPressed: () {

                  onCompleted(task);

                },

              ),

              title: Text(

                task.desc,

                style: TextStyle(

                  color: Color(0xFFf8f8f2)

                ),

              ),

              trailing: IconButton(

                icon: Icon(Icons.delete),

                color: Color(0xFFff79c6),

                onPressed: () {

                  onDelete(task);

                },

              ),

            ),

          );

        },

      ),

    );

  }

}