import 'package:flutter/material.dart';
import 'package:tes/Model/Contacte.dart';
import 'package:tes/services/Observer.dart';

class ContactStreamBuilder extends StatelessWidget {
  @required
  final Function builder;
  final Stream stream;

  const ContactStreamBuilder({this.builder, this.stream});

  @override
  Widget build(BuildContext context) {
    // ContactManager manager = Provider.of<ContactManager>(context);
    return Observer<List<Contacte>>(
      stream: stream,
      onSuccess:
          // ignore: missing_return
          (BuildContext context, List<Contacte> data) {
        return builder(context, data);
      },
    );
  }
}
