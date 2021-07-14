import 'package:flutter/material.dart';

class PendingCard extends StatelessWidget {

  final int? pendingCount;

  PendingCard(this.pendingCount);

  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: Card(

        elevation: 5,

        child: Container(

          color: Color(0xFFf1fa8c),

          padding: EdgeInsets.all(30),
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(

                '$pendingCount',

                style: TextStyle(

                  fontSize: 40,

                  fontWeight: FontWeight.bold,

                  color: Colors.yellow[900]

                ),

              ),

              FittedBox(

                child: Text(
              
                  'Tarefas pendentes',
              
                  style: TextStyle(
              
                    color: Colors.yellow[900]
              
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