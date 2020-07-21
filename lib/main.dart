import 'package:flutter/material.dart';
import 'package:mapocho/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'MAPOCHO',
       home: Home(),
    );
  }
}

