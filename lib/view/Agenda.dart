import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tes/Composant/AppDrawer.dart';
import 'package:tes/Composant/Counter.dart';
import 'package:tes/Composant/FloatButton.dart';

class AgendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      drawer: AppDrawer(),
      body: Counter(),
      floatingActionButton: FlatButtonCounter(),
    );
  }
}
