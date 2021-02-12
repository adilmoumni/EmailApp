import 'package:flutter/material.dart';
import 'package:tes/services/Overseer.dart';
import 'package:tes/services/Provider.dart';
import 'package:tes/view/App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      data: Overseer(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.red,
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: App(),
      ),
    );
  }
}
