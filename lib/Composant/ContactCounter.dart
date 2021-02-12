import 'package:flutter/material.dart';
import 'package:tes/Model/ContactManager.dart';
import 'package:tes/services/Observer.dart';
import 'package:tes/services/Provider.dart';

class ContactConter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ContactManager manager = Provider.of(context).fetch(ContactManager);
    return Observer<int>(
      stream: manager.count$,
      onSuccess: (context, data) {
        return Chip(
          backgroundColor: Colors.red,
          label: Text(
            (data ?? 0).toString(),
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
