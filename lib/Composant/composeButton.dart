import 'package:flutter/material.dart';

import '../Model/message.dart';
import '../view/messageCompose.dart';

class ComposeButton extends StatelessWidget {
  final List<Message> messages;

  ComposeButton(this.messages);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.red,
      onPressed: () async {
        Message message = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => MessageCompose()),
        );

        if (message.body != "" && message.subject != "") {
          messages.add(message);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Votre message a bien été envoye"),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
    );
  }
}
