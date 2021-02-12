import 'package:flutter/material.dart';

class MessageDetail extends StatelessWidget {
  final String title;
  final String body;

  MessageDetail([this.title,this.body]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Container(padding: EdgeInsets.all(16), child: Text(this.body),), 
    );
  }
}