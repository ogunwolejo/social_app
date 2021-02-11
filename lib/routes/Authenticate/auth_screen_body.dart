import 'package:flutter/material.dart';
import 'package:project_1/routes/Authenticate/login_component/loginScreen.dart';
import 'package:project_1/routes/Authenticate/signup_component/signup_screen.dart';
import 'package:project_1/routes/main_screen/main_screen.dart';

import '../../constant.dart';

class AuthScreenBody extends StatelessWidget {
  const AuthScreenBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      maintainBottomViewPadding: true,
      child: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(vertical: KDefault, horizontal: KDefault),
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(KDefault * 2),
                    bottomLeft: Radius.circular(KDefault * 2),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Wixz'),
                  ],
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AuthButton(
                      auth_mode: login,
                      icon_show: Icon(
                        Icons.lock_outlined,
                        color: Color(0xffBC1066),
                      ),
                      on_press: () => toLogin(context),
                      context: context),
                  Container(
                    width: 1,
                    height: size.height * 0.02,
                    color: Colors.white.withOpacity(0.4),
                  ),
                  AuthButton(
                      auth_mode: signup,
                      icon_show: Icon(
                        Icons.person_add_outlined,
                        color: Color(0xffBC1066),
                      ),
                      on_press:() => toSignup(context),
                      context: context),
                ],
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Divider(
                color: Colors.white.withOpacity(0.4),
                height: 1,
                thickness: 0.5,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                child: Text(
                  'Welcome to wixz',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget AuthButton(
      // ignore: non_constant_identifier_names
      {String auth_mode,
      // ignore: non_constant_identifier_names
      Icon icon_show,
      // ignore: non_constant_identifier_names
      Function on_press,
      BuildContext context}) {
    return Column(
      children: [
        FloatingActionButton(
          key: UniqueKey(),
          heroTag: auth_mode,
          elevation: 10,
          backgroundColor: Colors.white,
          onPressed: on_press,
          child: Center(
            child: icon_show,
          ),
        ),
        SizedBox(
          height: KDefault / 5,
        ),
        Text(
          auth_mode,
          style: Theme.of(context).textTheme.caption.copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  void toLogin(context) {
    Navigator.of(context).pushNamed(LoginScreen.loginScreenRoute);
  }

  void toSignup(context) {
     Navigator.of(context).pushNamed(SignupScreen.SignupRoute);
  }
}
