// import 'package:flutter/material.dart';

// class UglyProvider extends StatefulWidget {
//   final Widget child;

//   UglyProvider({Key key, this.child}) : super(key: key);

//   @override
//   _UglyProviderState createState() => _UglyProviderState();

//   static _UglyProviderState of(BuildContext context, {bool subsribe = true}) {
//     return subsribe
//         ?

//         // ignore: todo
//         //TODO THIS METHODE IS FOR REBUILD THE WIDGET BUT THE OTHER METHODE IS FOR NOT REBUILD
//         // ignore: deprecated_member_use
//         (context.inheritFromWidgetOfExactType(_UglyProvider) as _UglyProvider)
//             .data
//         : (context
//                 // ignore: deprecated_member_use
//                 .ancestorInheritedElementForWidgetOfExactType(_UglyProvider)
//                 .widget as _UglyProvider)
//             .data;
//   }
// }

// class _UglyProviderState extends State<UglyProvider> {
//   int counter;

//   @override
//   void initState() {
//     counter = 1;
//     super.initState();
//   }

//   void increment() {
//     setState(() {
//       if (counter != 20)
//         counter++;
//       else
//         counter = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _UglyProvider(data: this, child: widget.child);
//   }
// }

// class _UglyProvider extends InheritedWidget {
//   final _UglyProviderState data;

//   _UglyProvider({
//     Key key,
//     Widget child,
//     this.data,
//   }) : super(key: key, child: child);

//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     return true;
//   }
// }
