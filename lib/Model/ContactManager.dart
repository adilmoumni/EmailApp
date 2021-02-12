import 'dart:async';

import 'package:tes/Composant/ContactCounter.dart';
import 'package:tes/services/ContactServices.dart';
import 'Contacte.dart';
import 'package:rxdart/rxdart.dart';

class ContactManager {
  final PublishSubject<String> _filterSubject = PublishSubject<String>();
  final PublishSubject<int> _countSubject = PublishSubject<int>();
  final PublishSubject<List<Contacte>> _collection = PublishSubject();

  Sink<String> get inFilter => _filterSubject.sink;

  Stream<int> get count$ => _countSubject.stream;
  Stream<List<Contacte>> get browse$ => _collection.stream;

  ContactManager() {
    _filterSubject.stream.listen((filter) async {
      var contacts = await ContactServices.browse(query: filter);

      _collection.add(contacts);
      filter = '';
    });

    _collection.listen((list) => _countSubject.add(list.length));
  }
  void dispose() {
    _countSubject.close();
    _filterSubject.close();
  }
}

// import 'dart:async';

// import 'package:flutter/cupertino.dart';

// List<String> CONTACT = ['User 1', 'User 2', 'User 3', 'User 4', 'User 5'];

// class ContactManager {
//   Stream<List<String>> get contactListNow async* {
//     for (var i = 0; i < CONTACT.length; i++) {
//       await Future.delayed(Duration(seconds: 2));
//       yield CONTACT.sublist(0, i + 1);
//     }
//   }

//   final StreamController<int> _contactCounter = StreamController<int>();
//   Stream<int> get contactCounter => _contactCounter.stream;

//   ContactManager() {
//     contactListNow.listen((list) => _contactCounter.add(list.length));
//   }
// }
