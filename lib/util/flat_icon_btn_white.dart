import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';

class FlatWhiteButtonWithIcon extends StatelessWidget {
  final double borderRadiusVal;
  final Function onPress;
  const FlatWhiteButtonWithIcon({Key key, this.borderRadiusVal, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        child: FlatButton.icon(
          icon: Padding(
            padding: EdgeInsets.all(borderRadiusVal - 5),
            child: Icon(
              Icons.check,
              color: KColor,
            ),
            key: key,
          ),
          onPressed: onPress,
          color: Colors.white,
          label: Text(''),
        ),
      ),
    );
  }
}
