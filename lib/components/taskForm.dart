import 'package:flutter/material.dart';

class TaskForm extends StatefulWidget {

  final void Function(String) onSubmit;

  TaskForm(this.onSubmit);

  @override
  _TaskFormState createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {

  final taskController = TextEditingController();

  _submitForm() {

    final title = taskController.text;

    if (title.isEmpty) {

      return;

    }

    widget.onSubmit(title);

    taskController.clear();

  }

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 50,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Expanded(

            child: Padding(

              padding: EdgeInsets.symmetric(

                horizontal: 10,

              ),
              
              child: TextField(

                onSubmitted: (_) => _submitForm(),

                controller: taskController,

                style: TextStyle(
                  
                  color: Colors.white,

                ),

                decoration: InputDecoration(

                  labelText: 'Tarefa',

                  labelStyle: TextStyle(

                    color: Colors.white,

                    fontSize: 15

                  ),        

                  enabledBorder: UnderlineInputBorder(

                    borderSide:  BorderSide(color : Colors.white)

                  ),

                  focusedBorder: UnderlineInputBorder(

                    borderSide:  BorderSide(color : Colors.white)

                  ),

                ),
                
              ),
            ),
            

          ),

          IconButton(

            icon: Icon(Icons.add_circle),

            iconSize: 30,

            color: Color(0xFF50fa7b),

            onPressed: _submitForm,

          ),

          
        ],
      ),

    );

  }
}