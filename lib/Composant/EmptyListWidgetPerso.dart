import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';

class EmptyListWigetPerso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmptyListWidget(
      title: 'No Data IS here',
      subTitle: 'No  notification available yet',
      packageImage: PackageImage.Image_2,
      titleTextStyle: Theme.of(context)
          .typography
          .dense
          // ignore: deprecated_member_use
          .display1
          .copyWith(color: Color(0xff9da9c7)),
      subtitleTextStyle: Theme.of(context)
          .typography
          .dense
          // ignore: deprecated_member_use
          .body2
          .copyWith(color: Colors.red),
    );
  }
}
