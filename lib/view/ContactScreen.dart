import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tes/Composant/AppDrawer.dart';
import 'package:tes/Composant/ContactCounter.dart';
import 'package:tes/Composant/ContactStreamBuilder.dart';
import 'package:tes/Model/ContactManager.dart';
import 'package:tes/Model/Contacte.dart';
import 'package:tes/services/Provider.dart';
import 'package:tes/view/ContactSearchDelegate.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var ff = MediaQuery.of(context).size;
    ContactManager manager = Provider.of(context).fetch(ContactManager);
    manager.inFilter.add('');
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        actions: [
          ContactConter(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ContactSearchDelegate(),
              );
            },
          ),
          Padding(padding: EdgeInsets.only(right: 20))
        ],
      ),
      drawer: AppDrawer(),
      body: ContactStreamBuilder(
        stream: manager.browse$,
        builder: (context, contacts) {
          return ListView.separated(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              Contacte _contacte = contacts[index];
              return ListTile(
                leading: CircleAvatar(),
                subtitle: Text(_contacte.email),
                title: Text(_contacte.name),
                onTap: () {},
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              height: 0,
            ),
          );
        },
      ),
    );
  }
}
