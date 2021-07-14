import 'dart:math';


class Task {

  final int id = Random().nextInt(100);

  final String desc;

  final DateTime date = DateTime.now();

  bool finish;

  Task({

    required this.desc,

    required this.finish

  });

  completeTask () {

    this.finish = !this.finish;

  }
}