import 'package:flutter/cupertino.dart';
import 'package:tes/Model/CounterManger.dart';
import 'package:tes/services/Observer.dart';
import 'package:tes/services/Provider.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterManager manager = Provider.of(context).fetch(CounterManager);
    return Center(
      child: Observer<int>(
        stream: manager.counter$,
        onSuccess: (context, data) {
          return Text('Agenda : ${data}');
        },
      ),
    );
  }
}
