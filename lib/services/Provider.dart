import 'package:flutter/material.dart';
import 'package:tes/services/Overseer.dart';

class Provider extends InheritedWidget {
  final Overseer data;

  Provider({
    Key key,
    Widget child,
    this.data,
  }) : super(key: key, child: child);


  static Overseer of(BuildContext context) {
    // final type = _typeOf<Provider<T>>();
    // ignore: deprecated_member_use
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).data;
  }
  // static Type _typeOf<T>() => T;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}