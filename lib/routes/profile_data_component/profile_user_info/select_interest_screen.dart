import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/Authenticate/completed_signup/completed_signup.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/select_interests_muti_choice_list.dart';
import 'package:project_1/util/circular_next_button.dart';

class SelectInsterestScreen extends StatefulWidget {
  static String selectInterestRoute = "selectInterestRoute";

  SelectInsterestScreen({Key key}) : super(key: key);

  @override
  _SelectInsterestScreenState createState() => _SelectInsterestScreenState();
}

class _SelectInsterestScreenState extends State<SelectInsterestScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Interests',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
        ),
        elevation: 0,
        actions: [
          Container(
            child: CircularNextButton(
              nextScreenName: CompletedSignup.completedSignupRoute,
            ),
            margin: EdgeInsets.only(right: KDefault),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: KColor,
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: KDefault),
              width: double.maxFinite,
              height: size.height * 0.1,
              //color: Colors.pink,
              child: Text(
                'Select Your Interests',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Expanded(
              child: Container(
                //color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: KDefault),
                child: SelectInterestMutiChoice(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
