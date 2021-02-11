import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';

class CircularNextButton extends StatelessWidget {
  final String nextScreenName;
  const CircularNextButton({Key key, this.nextScreenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void toNextScreen() {
      Navigator.of(context).pushNamed(nextScreenName);
    }

    return GestureDetector(
      onTap: toNextScreen,
      child: Material(
        shape: CircleBorder(side: BorderSide.none),
        elevation: 10,
        color: KColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.check, size: 16),
          ),
        ),
      ),
    );
  }
}
