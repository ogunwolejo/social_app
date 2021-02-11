import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';

class UserGenderInfo extends StatefulWidget {
  static String userGenderInfoRoute = "userGenderInfoRoute";
  UserGenderInfo({Key key}) : super(key: key);

  @override
  _UserGenderInfoState createState() => _UserGenderInfoState();
}

class _UserGenderInfoState extends State<UserGenderInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double half = size.height / 2.0;
    print(half);

    return Scaffold(
      body: Container(
        color: Colors.transparent,
        height: size.height,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          fit: StackFit.loose,
          children: [
            Positioned(
              //top: 0.0,
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xFFA17B7B),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.5,
              bottom: 0.0,
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: KColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
