import 'package:flutter/material.dart';
import './pendingCard.dart';
import './finishCard.dart';
import 'todayCard.dart';

class Overview extends StatelessWidget {

  final Map<String, int> overviews;

  Overview(this.overviews);

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [

        FinishCard(overviews['finish']),

        PendingCard(overviews['pending']),

        TodayCard(overviews['today'])

      ],

    );

  }

}