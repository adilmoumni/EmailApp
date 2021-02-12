import 'package:flutter/material.dart';
import 'package:tes/Composant/AppDrawer.dart';

import 'messageListe.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: () async {})
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: "Important"),
              Tab(text: "Other"),
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: TabBarView(children: [
          MessagesList(
            status: 'Important',
          ),
          MessagesList(
            status: 'Other',
          ),
        ]),
      ),
    );
  }
}
