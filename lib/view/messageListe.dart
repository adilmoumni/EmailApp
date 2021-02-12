import 'package:flutter/material.dart';
import 'package:tes/Composant/composeButton.dart';
import 'package:tes/Model/message.dart';
import 'package:tes/view/messageDetail.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessagesList extends StatefulWidget {
  final String title;
  final String status;

  MessagesList({Key key, this.title, this.status = 'Important'})
      : super(key: key);

  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  Future<List<Message>> future;
  List<Message> messages;

  void initState() {
    super.initState();
    fetch();
  }

  void fetch() async {
    future = Message.browser(status: widget.status);
    messages = await future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ComposeButton(messages),
      body: FutureBuilder(
        future: future,
        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.red));
            case ConnectionState.done:
              if (snapshot.hasError)
                return Text("There was an error: ${snapshot.error}");
              var messages = snapshot.data;
              return ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 0,
                ),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  Message msg = messages[index];

                  return Slidable(
                    delegate: SlidableDrawerDelegate(),
                    actionExtentRatio: 0.20,
                    closeOnScroll: false,
                    actions: [
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.green,
                        icon: Icons.delete,
                        onTap: () {
                          setState(() {
                            messages.removeAt(index);
                          });
                        },
                      ),
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                      ),
                    ],
                    secondaryActions: [
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                      ),
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                      ),
                    ],
                    key: ObjectKey(msg),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(msg.subject.substring(0, 2)),
                      ),
                      isThreeLine: false,
                      title: Text(msg.subject),
                      subtitle: Text(msg.body),
                      selectedTileColor: Colors.grey,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return MessageDetail(msg.subject, msg.body);
                        }));
                      },
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
