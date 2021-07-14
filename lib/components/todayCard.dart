import 'package:flutter/material.dart';

class TodayCard extends StatelessWidget {

  final int? todayCount;

  TodayCard(this.todayCount);

  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: Card(

        elevation: 5,

        child: Container(

          color: Color(0xFF8be9fd),

          padding: EdgeInsets.all(30),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(

                '$todayCount',

                style: TextStyle(

                  fontSize: 40,

                  fontWeight: FontWeight.bold,

                  color: Colors.cyan[900]

                ),

              ),

              FittedBox(

                child: Text(
              
                  'Tarefas de hoje',
              
                  style: TextStyle(
              
                    color: Colors.cyan[900]
              
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