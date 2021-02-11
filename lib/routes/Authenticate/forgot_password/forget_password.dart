import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/util/circular_icon.dart';
import 'package:project_1/util/flat_icon_btn_white.dart';

class ForgotPassword extends StatefulWidget {
  static String forgotPaswordRoute = "ForgotPasswordRoute";
  const ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextEditingController emailController = TextEditingController();

    Widget bodyOfScreen() => Container(
          height: size.height,
          margin: EdgeInsets.only(
              left: KDefault, right: KDefault, top: KDefault * 2),
          child: Center(
            child: Column(
              children: [
                CircularIcon(
                  colorOfContainer: Colors.black.withAlpha(0),
                  iconView:
                      Icon(Icons.lock_open, color: Colors.white, size: 40),
                  paddingVal: KDefault * 1.5,
                ),
                SizedBox(height: size.height * 0.01),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Center(
                  child: SizedBox(
                    height: 2,
                    width: 30,
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                FormField(
                  autovalidate: true,
                  builder: (_) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          autocorrect: true,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.send,
                          decoration: InputDecoration(
                            labelText: 'Email address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xffffffff).withOpacity(0.4),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                            suffixIcon: Icon(Icons.email, color: Colors.white),
                          ),
                          cursorColor: Colors.white,
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
                            onPress: () {}),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );

    return Scaffold(
      backgroundColor: KColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Forgot Password',
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
          child: bodyOfScreen(),
        ),
      ),
    );
  }
}
