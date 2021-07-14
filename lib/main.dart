import 'package:flutter/material.dart';

import './screen/home.dart';

main() => runApp(TodoApp());


class TodoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Home(),

      theme: ThemeData(

        primaryColor: Color(0xFF383A59),

        accentColor: Color(0xFF8be9fd)

      ),

    );

  }

}