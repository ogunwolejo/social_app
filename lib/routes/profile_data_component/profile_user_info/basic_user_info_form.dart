import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_1/constant.dart';

class BasicUserInfoForm extends StatefulWidget {
  BasicUserInfoForm({Key key}) : super(key: key);

  @override
  _BasicUserInfoFormState createState() => _BasicUserInfoFormState();
}

class _BasicUserInfoFormState extends State<BasicUserInfoForm> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext _, BoxConstraints bxconstraint) => FormField(
        autovalidate: true,
        builder: (_) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: KDefault, vertical: 10),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(KDefault / 2),
                  height: bxconstraint.minHeight * 0.15,
                  child: Text(
                    'Info',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontSize: 15,
                        ),
                  ),
                ),

                // first row textform
                Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: TextFormField(
                        autocorrect: true,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Date of birth',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'age',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: KDefault,
                            ),
                          ),
                        ),
                        maxLines: 1,
                        maxLengthEnforced: true,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: bxconstraint.maxHeight * 0.02),

                // the textbox
                TextFormField(
                  autocorrect: true,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'about you...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                  ),
                  maxLengthEnforced: true,
                  maxLines: 8,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                SizedBox(height: bxconstraint.maxHeight * 0.02),

                // the second row
                Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: TextFormField(
                        autocorrect: true,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Height',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: KDefault,
                            ),
                          ),
                        ),
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'weight',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: KDefault,
                            ),
                          ),
                        ),
                        maxLines: 1,
                        maxLengthEnforced: true,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
