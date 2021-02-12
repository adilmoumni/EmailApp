import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tes/Model/CounterManger.dart';
import 'package:tes/services/Provider.dart';

class FlatButtonCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterManager state = Provider.of(context).fetch(CounterManager);
      Provider(data: ,);
    return FloatingActionButton(
      onPressed: state.incriment,
      child: Icon(Icons.add),
    );
  }
}
