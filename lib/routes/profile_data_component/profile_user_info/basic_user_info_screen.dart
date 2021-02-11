import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/basic_user_info_form.dart';
import 'package:project_1/routes/profile_data_component/profile_user_info/select_interest_screen.dart';
import 'package:project_1/util/circular_next_button.dart';

class BasicUserInfoScreen extends StatefulWidget {
  static String basicUserInfoScreenRoute = "basicUserInfoScreenRoute";
  BasicUserInfoScreen({Key key}) : super(key: key);

  @override
  _BasicUserInfoScreenState createState() => _BasicUserInfoScreenState();
}

class _BasicUserInfoScreenState extends State<BasicUserInfoScreen> {
  List picList = ['', 'assets/img.jpg', 'assets/img.jpg'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mdQuery = MediaQuery.of(context);

    Widget profileImageHold(String imagePath) {
      return GestureDetector(
        key: UniqueKey(),
        onTap: () {
          return print('camera');
        },
        child: Container(
          width: mdQuery.orientation == Orientation.portrait ? 150 : 400,
          decoration: BoxDecoration(
            color: Color(0xff333333),
            border: Border.all(
              style: BorderStyle.none,
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: imagePath.isEmpty
              ? Center(
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    color: KColor,
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(KDefault / 2),
                    bottomLeft: Radius.circular(KDefault / 2),
                  ),
                  child: Image.asset(
                    'assets/img.jpg',
                    fit: mdQuery.orientation == Orientation.portrait
                        ? BoxFit.cover
                        : BoxFit.fitWidth,
                    key: UniqueKey(),
                    errorBuilder:
                        (BuildContext _, Object exception, StackTrace st) {
                      return Text('Couldnt load',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.black));
                    },
                  ),
                ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile info',
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
              nextScreenName: SelectInsterestScreen.selectInterestRoute,
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
        child: mdQuery.orientation == Orientation.portrait
            ? Container(
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: mdQuery.orientation == Orientation.portrait
                          ? Alignment.centerLeft
                          : Alignment.center,
                      height: size.height * 0.04,
                      margin: EdgeInsets.symmetric(horizontal: KDefault),
                      width: double.infinity,
                      child: Text(
                        'Add Photos',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * 0.24,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        itemCount: picList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext _, int index) {
                          return profileImageHold(picList[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          backgroundBlendMode: BlendMode.lighten,
                          color: KColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                          ),
                          border: Border.all(style: BorderStyle.none),
                        ),
                        child: BasicUserInfoForm(),
                      ),
                    ),
                  ],
                ),
              )
            :
            // landscape layout
            SingleChildScrollView(
                child: Container(
                  color: Colors.blue,
                  height: size.height,
                ),
              ),
      ),
    );
  }
}
