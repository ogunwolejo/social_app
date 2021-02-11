import 'package:flutter/material.dart';

// the provider logic
import 'package:project_1/logic/user_interest/interest_logic.dart';

// applications modules
import 'package:project_1/routes/Authenticate/auth_screen.dart';
import 'package:project_1/routes/Authenticate/completed_signup/completed_signup.dart';
import 'package:project_1/routes/Authenticate/forgot_password/forget_password.dart';
import 'package:project_1/routes/Authenticate/login_component/loginScreen.dart';
import 'package:project_1/routes/Authenticate/signup_component/device_verfication/phone_num_verification.dart';
import 'package:project_1/routes/Authenticate/signup_component/signup_screen.dart';
import 'package:project_1/routes/main_screen/main_screen.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/basic_user_info_screen.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/select_interest_screen.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/user_gender_info.dart';

// third party packages
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: InterestLogic(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            fillColor: Color(0xffffffff).withOpacity(0.4),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          primarySwatch: Colors.red,
        ),
        home: AuthScreen(),
        routes: {
          MainScreen.mainScreenRoute: (_) {
            return MainScreen();
          },
          LoginScreen.loginScreenRoute: (_) {
            return LoginScreen();
          },
          ForgotPassword.forgotPaswordRoute: (_) {
            return ForgotPassword();
          },
          SignupScreen.SignupRoute: (_) {
            return SignupScreen();
          },
          PhoneNumberVerification.phoneNumberVerificationRoute: (_) {
            return PhoneNumberVerification();
          },
          /*UserGenderInfo.userGenderInfoRoute: (_) {
            return UserGenderInfo();
          },*/
          BasicUserInfoScreen.basicUserInfoScreenRoute: (_) {
            return BasicUserInfoScreen();
          },
          SelectInsterestScreen.selectInterestRoute: (_) {
            return SelectInsterestScreen();
          },
          CompletedSignup.completedSignupRoute: (_) {
            return CompletedSignup();
          }
        },
      ),
    );
  }
}
