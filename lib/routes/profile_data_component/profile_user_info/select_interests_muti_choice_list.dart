import 'package:flutter/material.dart';
import 'package:project_1/constant.dart';
import 'package:project_1/logic/user_interest/interest_logic.dart';

// the interest to select from model, also contains the list of optional interests
import 'package:project_1/models/interest_to_select.dart';
import 'package:provider/provider.dart';

class SelectInterestMutiChoice extends StatefulWidget {
  SelectInterestMutiChoice({Key key}) : super(key: key);

  @override
  _SelectInterestMutiChoiceState createState() =>
      _SelectInterestMutiChoiceState();
}

class _SelectInterestMutiChoiceState extends State<SelectInterestMutiChoice> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final pdx = Provider.of<InterestLogic>(context);

    void onTap(int _index) {
      print([interests[_index].isSelected, interests[_index].identifier]);
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 0.8,
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: interests.length,
      itemBuilder: (BuildContext ctx, int index) {
        return interestChoiceContainer(
          interestName: interests[index].itemName,
          onSelect: () => pdx.onSelectInterest(index),
          imageUrl: interests[index].imageUrl,
          interestSelected: interests[index].isSelected,
        );
      },
    );
  }

  // the selection Choice container
  Widget interestChoiceContainer(
      {String interestName, String imageUrl, Function onSelect, bool interestSelected}) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(KDefault / 2),
            bottomLeft: Radius.circular(KDefault / 2),
          ),
          border: Border.all(
            color: Colors.transparent,
            style: BorderStyle.none,
          ),
          image: DecorationImage(
            image: AssetImage('assets/$imageUrl'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(KDefault / 2),
                    bottomLeft: Radius.circular(KDefault / 2),
                  ),
                  border: Border.all(
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 5,
              bottom: 10,
              child: Container(
                child: Text(
                  interestName,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                ),
              ),
            ),
            if (interestSelected)
              Positioned(
                right: 5,
                top: 5,
                child: Material(
                  shape: CircleBorder(side: BorderSide.none),
                  elevation: 3,
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.check,
                        size: 12,
                        color: KColor,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
