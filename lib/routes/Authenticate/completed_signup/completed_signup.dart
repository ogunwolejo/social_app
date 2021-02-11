import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/main_screen/main_screen.dart';
import 'package:project_1/util/circular_icon.dart';

class CompletedSignup extends StatelessWidget {
  static String completedSignupRoute = "completedSignupRoute";

  const CompletedSignup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mdquery = MediaQuery.of(context);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: KColor,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: mdquery.orientation == Orientation.portrait
                        ? EdgeInsets.only(top: KDefault * 12)
                        : EdgeInsets.only(top: KDefault * 3),
                    child: Center(
                      child: CircularIcon(
                        colorOfContainer: KColor2,
                        iconView: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        paddingVal: KDefault,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: KDefault / 2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: KDefault / 2),
                    child: Text(
                      'All done',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: KDefault / 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(KDefault / 2),
                    margin: EdgeInsets.symmetric(horizontal: KDefault / 5),
                    child: Column(
                      children: [
                        Text(
                          'Thanks for creating an account, enjoy the app............!!',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        SizedBox(
                          height: KDefault / 2,
                        ),
                        Container(
                          color: Colors.white.withOpacity(0.5),
                          height: 2,
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: mdquery.orientation == Orientation.portrait
                          ? KDefault * 10
                          : KDefault * 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(MainScreen.mainScreenRoute);
                    },
                    child: CircularIcon(
                      colorOfContainer: Colors.white,
                      iconView:
                          Icon(Icons.arrow_forward, color: KColor, size: 24),
                      paddingVal: KDefault / 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
