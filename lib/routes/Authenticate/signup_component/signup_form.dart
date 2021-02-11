import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/Authenticate/signup_component/device_verfication/phone_num_verification.dart';
import 'package:project_1/util/flat_icon_btn_white.dart';

class SignupForm extends StatefulWidget {
  SignupForm({Key key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FormField(
      autovalidate: true,
      enabled: true,
      builder: (_) {
        return Column(
          children: [
            TextFormField(
              autocorrect: true,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Fullname',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                //suffixIcon: Icon(Icons.edit, color: Colors.white),
              ),
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
            TextFormField(
              autocorrect: true,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                //suffixIcon: Icon(Icons.email, color: Colors.white),
              ),
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                //suffixIcon: Icon(Icons.email, color: Colors.white),
              ),
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: size.height * 0.01),
            FlatWhiteButtonWithIcon(
              borderRadiusVal: KDefault,
              key: UniqueKey(),
              onPress: () => onCompleteSignUp(context),
            ),
          ],
        );
      },
    );
  }

  void onCompleteSignUp(BuildContext ctx) async {
    Navigator.of(ctx)
        .pushNamed(PhoneNumberVerification.phoneNumberVerificationRoute);
  }

  bool obsecureTextVal = true;
  void onChangeobsecureText() {
    setState(() {
      obsecureTextVal = !obsecureTextVal;
    });
  }
}
