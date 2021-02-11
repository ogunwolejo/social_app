import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/Authenticate/login_component/login_form.dart';
import 'package:project_1/util/circular_icon.dart';

class LoginScreen extends StatelessWidget {
  static String loginScreenRoute = "loginScreenRoute";
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
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
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: size.height * 0.19,
                  margin: EdgeInsets.only(
                      top: KDefault / 2, left: KDefault, right: KDefault),
                  child: Column(
                    children: [
                      CircularIcon(
                        colorOfContainer: Color(0xffffffff),
                        iconView: Icon(Icons.lock_outline, color: KColor),
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
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
