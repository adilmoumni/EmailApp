import 'package:tes/Model/ContactManager.dart';
import 'package:tes/Model/CounterManger.dart';


class Overseer {
  Map<dynamic, dynamic> repository = {};

  Overseer() {
    register(ContactManager, ContactManager());
    register(CounterManager, CounterManager());

  }

  register(name, object) {
    repository[name] = object;
  }

  fetch(name) => repository[name];
}
