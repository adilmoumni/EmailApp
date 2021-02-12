import 'package:flutter/material.dart';
import 'package:tes/Model/message.dart';

class MessageCompose extends StatefulWidget {
  @override
  _MessageComposeState createState() => _MessageComposeState();
}

class _MessageComposeState extends State<MessageCompose> {
  String to = "";
  String subject = "";
  String body = "";

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compose New Message')),
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              Text(
                'Compose New Message',
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.title,
              ),
              ListTile(
                title: TextFormField(
                  validator: (value) => !value.contains('@')
                      ? "To field muste be a valid email"
                      : null,
                  onSaved: (value) => to = value,
                  decoration: InputDecoration(
                    labelText: 'TO',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: TextFormField(
                  validator: (value) {
                    int len = value.length;
                    if (len == 0) {
                      return "Subject Cannot be empty";
                    } else if (len < 4) {
                      return "Subject most be longue than 4 character";
                    }
                    return null;
                  },
                  onSaved: (value) => subject = value,
                  decoration: InputDecoration(
                    labelText: 'Subject',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: TextFormField(
                  onSaved: (value) => body = value,
                  decoration: InputDecoration(
                    labelText: 'Body',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  maxLines: 5,
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  title: RaisedButton(
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    splashColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    child: Text('RaisedButton - Splash Color'),
                    onPressed: () {
                      if (this.key.currentState.validate()) {
                        this.key.currentState.save();
                        Message msg = Message(subject, body);
                        Navigator.pop(context, msg);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
