import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tes/Model/Contacte.dart';

class ContactServices {
  static String _url = "http://jsonplaceholder.typicode.com/users";

  static Future<List<Contacte>> browse({query}) async {

    http.Response response = await http.get(_url);
    String content = response.body;

    List collection = json.decode(content);

    Iterable<Contacte> _contacts = collection.map((_) => Contacte.fromJson(_));

    if (query != null && query.isNotEmpty) {
      _contacts = _contacts.where(
        (contacts) => contacts.name.toLowerCase().contains(query),
      );
    }
    return _contacts.toList();
  }
}

// void main() async {
//   List result = await ContactServices.browse();
//   print(result);
// }
