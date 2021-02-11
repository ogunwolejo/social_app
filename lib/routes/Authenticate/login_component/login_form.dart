import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/Authenticate/forgot_password/forget_password.dart';
import 'package:project_1/routes/Authenticate/signup_component/signup_screen.dart';
import 'package:project_1/routes/main_screen/main_screen.dart';
import 'package:project_1/util/flat_icon_btn_white.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FormField(
      autovalidate: true,
      builder: (_) {
        return Column(
          children: [
            TextFormField(
              autocorrect: true,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xffffffff).withOpacity(0.4),
                focusColor: Colors.white,
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
                suffixIcon: Icon(Icons.person, color: Colors.white),
              ),
              cursorColor: Colors.white,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: size.height * 0.01),
            TextFormField(
              autocorrect: true,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              obscureText: obsecureTextVal,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: GestureDetector(
                  onTap: onChangeobsecureText,
                  child: Icon(Icons.remove_red_eye, color: Colors.white),
                ),
              ),
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                Checkbox(
                  value: checkboxDefault,
                  onChanged: (bool value) {
                    onCheck(value);
                  },
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Remeber password',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            FlatWhiteButtonWithIcon(
                borderRadiusVal: KDefault,
                onPress: () => onCompleteLogin(context),
                key: UniqueKey()),
            SizedBox(height: size.height * 0.01),
            ForgetPasswordOrSignUp(
              displayText: 'Forgot Password',
              icon: Icons.lock_open,
              onPress: () => onPressForgotPassword(context),
              key: UniqueKey(),
            ),
            SizedBox(height: size.height * 0.01),
            Divider(
              color: Colors.white,
              height: 1,
            ),
            SizedBox(height: size.height * 0.01),
            ForgetPasswordOrSignUp(
              displayText: 'Create Account',
              icon: Icons.person_add,
              onPress: () {
                return onPressSignUp(context);
              },
              key: UniqueKey(),
            ),
          ],
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget ForgetPasswordOrSignUp(
          {IconData icon, String displayText, Function onPress, Key key}) =>
      GestureDetector(
        key: key,
        onTap: onPress,
        child: Container(
          alignment: Alignment.center,
          //margin: EdgeInsets.symmetric(horizontal: KDefault * 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: KDefault / 2),
              RichText(
                text: TextSpan(
                  text: displayText,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      );

  void onCompleteLogin(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MainScreen.mainScreenRoute);
  }

  void onPressSignUp(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SignupScreen.SignupRoute);
  }

  void onPressForgotPassword(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ForgotPassword.forgotPaswordRoute);
  }

  bool checkboxDefault = false;
  void onCheck(value) {
    setState(() {
      checkboxDefault = value;
    });
  }

  bool obsecureTextVal = true;
  void onChangeobsecureText() {
    setState(() {
      obsecureTextVal = !obsecureTextVal;
    });
  }
}
