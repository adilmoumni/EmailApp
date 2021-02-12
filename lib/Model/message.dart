import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@JsonSerializable()
class Message {
  final String subject;
  final String body;

  Message([this.subject, this.body]);

  Message.fromJson(Map<String, dynamic> json)
      : subject = json['subject'],
        body = json['body'];

  static Future<List<Message>> browser({status = 'Important'}) async {
    String url = status == 'Important'
        ? 'https://run.mocky.io/v3/910e0c09-e907-4bfd-b766-e36b706a63a2'
        : 'https://run.mocky.io/v3/b05bfc7e-a6af-488a-9ff5-c5aea4a22214';
    http.Response response = await http.get(url);
    await Future.delayed(Duration(seconds: 1));
    String content = response.body;
    // String content = await rootBundle.loadString('data/messages.json');
    List collection = json.decode(content);
    List<Message> _message =
        collection.map((json) => new Message.fromJson(json)).toList();

    return _message;
  }
}
