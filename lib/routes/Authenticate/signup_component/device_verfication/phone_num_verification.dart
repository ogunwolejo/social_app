import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/basic_user_info_screen.dart';

import 'package:project_1/routes/profile_data_component/profile_user_info/user_gender_info.dart';
import 'package:project_1/util/circular_icon.dart';
import 'package:project_1/util/flat_icon_btn_white.dart';

class PhoneNumberVerification extends StatefulWidget {
  static String phoneNumberVerificationRoute = "phoneNumberVerificationRoute";
  PhoneNumberVerification({Key key}) : super(key: key);

  @override
  _PhoneNumberVerificationState createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mdQuery = MediaQuery.of(context);

    // the onSubmit function
    void onSubmit() {
      Navigator.of(context)
          .pushNamed(BasicUserInfoScreen.basicUserInfoScreenRoute);
    }

    // the verfication number button
    Widget verifiedCodeInputContainer({int verifiedNum}) => Container(
          height: 50,
          width: 50,
          child: Material(
            shape: CircleBorder(side: BorderSide.none),
            elevation: 5,
            textStyle: Theme.of(context)
                .accentTextTheme
                .bodyText2
                .copyWith(color: Colors.black),
            color: Color(0xffB74E3D).withOpacity(0.4),
            shadowColor: Colors.black54,
            child: Padding(
              padding: EdgeInsets.all(10),
              key: UniqueKey(),
              child: Center(
                child: Text(
                  verifiedNum.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        );

    Widget bodyOfScreen() => Container(
          height: size.height,
          margin: EdgeInsets.only(
              left: KDefault, right: KDefault, top: KDefault * 2),
          child: Center(
            child: Column(
              children: [
                CircularIcon(
                  colorOfContainer: Colors.black.withAlpha(0),
                  iconView: Icon(Icons.phone_android_outlined,
                      color: Colors.white, size: 40),
                  paddingVal: KDefault,
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
                            text: 'We sent a code',
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
                      'Confirm the verification code sent to you email address',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            verifiedCodeInputContainer(verifiedNum: 9),
                            verifiedCodeInputContainer(verifiedNum: 5),
                            verifiedCodeInputContainer(verifiedNum: 8),
                            verifiedCodeInputContainer(verifiedNum: 0),
                          ],
                        ),
                        SizedBox(height: size.height * 0.05),
                        FlatWhiteButtonWithIcon(
                          borderRadiusVal: KDefault,
                          key: UniqueKey(),
                          onPress: onSubmit,
                        ),
                        SizedBox(height: size.height * 0.02),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.refresh_outlined,
                                    color: Colors.white),
                                Text(
                                  '\tResend',
                                  style: Theme.of(context)
                                      .accentTextTheme
                                      .caption
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
          'Confirm Number',
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
        child: mdQuery.orientation == Orientation.portrait
            ? bodyOfScreen()
            : SingleChildScrollView(
                child: bodyOfScreen(),
              ),
      ),
    );
  }
}
