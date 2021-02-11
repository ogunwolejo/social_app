import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Icon iconView;
  final Color colorOfContainer;
  final paddingVal;

  CircularIcon(
      {Key key, this.iconView, this.colorOfContainer, this.paddingVal});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(side: BorderSide.none),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(paddingVal),
        child: iconView,
      ),
      color: colorOfContainer,
    );
  }
}
