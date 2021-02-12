import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tes/Composant/AppDrawer.dart';
import 'package:tes/view/Agenda.dart';
import 'package:tes/view/InboxSreen.dart';
import 'package:tes/view/ContactScreen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        InboxScreen(),
        AgendaScreen(),
        ContactScreen(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('Inbox'),
            icon: Icon(Icons.inbox),
          ),
          BottomNavigationBarItem(
            title: Text('Agenda'),
            icon: Icon(Icons.view_agenda),
          ),
          BottomNavigationBarItem(
            title: Text('Contact'),
            icon: Icon(Icons.contacts),
          ),
        ],
        onTap: _onBarItemTap,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
