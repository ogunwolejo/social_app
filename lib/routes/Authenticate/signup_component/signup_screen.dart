import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/Authenticate/signup_component/signup_form.dart';
import 'package:project_1/util/circular_icon.dart';

class SignupScreen extends StatelessWidget {
  static String SignupRoute = "SignupRoute";
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: KColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Signup',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                height: size.height * 0.19,
                margin:
                    EdgeInsets.only(top:KDefault, left: KDefault / 2, right: KDefault / 2),
                child: Column(
                  children: [
                    CircularIcon(
                      colorOfContainer: Color(0xffffffff),
                      iconView: Icon(Icons.person_add, color: KColor),
                      paddingVal: KDefault,
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(horizontal: KDefault),
              height: size.height * 0.8,
              child: SignupForm(),
            ),
          ],
        ),
      ),
    );
  }
}
