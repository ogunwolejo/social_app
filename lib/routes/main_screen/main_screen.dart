import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/util/circular_icon.dart';

class MainScreen extends StatefulWidget {
  static String mainScreenRoute = "MainScreenRoute";
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        key: GlobalKey(),
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: true,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  child: CircularIcon(
                    colorOfContainer: Colors.white,
                    iconView: Icon(Icons.eco, color: Colors.black, size: 20),
                    key: UniqueKey(),
                    paddingVal: 2.0,
                  ),
                ),
                tooltip: 'offer',
                alignment: Alignment.center,
              ),
              IconButton(
                onPressed: () {},
                icon: CircularIcon(
                  colorOfContainer: Colors.white,
                  iconView: Icon(Icons.settings, color: Colors.black, size: 20),
                  key: UniqueKey(),
                  paddingVal: 2.0,
                ),
                tooltip: 'application setting',
                alignment: Alignment.center,
              ),
            ],
            floating: false,
            expandedHeight: size.height,
            flexibleSpace: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/wristwatch.jpg'),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
