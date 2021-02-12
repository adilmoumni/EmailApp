import 'package:flutter/material.dart';
import 'package:tes/Composant/ContactStreamBuilder.dart';
import 'package:tes/Composant/EmptyListWidgetPerso.dart';
import 'package:tes/Model/ContactManager.dart';
import 'package:tes/Model/Contacte.dart';
import 'package:tes/services/Provider.dart';

// ContactManager manager = Provider.of(context).fetch(ContactManager);
//     manager.inFilter.add('');

class ContactSearchDelegate extends SearchDelegate {
  final manager;
  ContactSearchDelegate({this.manager});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        ContactManager manager = Provider.of(context).fetch(ContactManager);
        manager.inFilter.add('');
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text('dkjdffkdjf'),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    ContactManager manager = Provider.of(context).fetch(ContactManager);

    if (query.length < 3) {
      int lngt = query.length;
      return Center(
        child: Text("Type at least $lngt to search"),
      );
    }

    manager.inFilter.add(query);

    return ContactStreamBuilder(
      stream: manager.browse$,
      builder: (context, contacts) {
        if (contacts.isEmpty) {
          return EmptyListWigetPerso();
        }
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
    );
  }
}
