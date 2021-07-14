import 'package:flutter/material.dart';

class FinishCard extends StatelessWidget {

  final int? finishCount;

  FinishCard(this.finishCount);

  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: Card(

        elevation: 5,

        child: Container(

          color: Color(0xFF50fa7b),

          padding: EdgeInsets.all(30),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(

                '$finishCount',

                style: TextStyle(

                  fontSize: 40,

                  fontWeight: FontWeight.bold,

                  color: Colors.green[900]

                ),

              ),

              FittedBox(

                child: Text(
              
                  'Tarefas finalizadas',
              
                  style: TextStyle(
              
                    color: Colors.green[900]
              
                  ),
              
                ),
                
              )

            ],

          )

        ),

      ),
    );

  }

}