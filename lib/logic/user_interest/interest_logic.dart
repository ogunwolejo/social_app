import 'package:flutter/material.dart';
import 'package:project_1/models/interest_to_select.dart';

// import the interest_to_select model

class InterestLogic with ChangeNotifier {
  final List<Map<String, dynamic>> _listOfUserInterest = [];

  get listOfUserInterest => [..._listOfUserInterest]; // the getter function

  void onSelectInterest(int index) {
    int interestSelected = interests.indexWhere(
      (interest) => interest.identifier == interests[index].identifier,
    );

    interests[interestSelected].isSelected =
        !interests[interestSelected].isSelected;

    /**
     * after selecting an interest, we check the list to see if the interests has been selected by the user before, if such condition is true we do nothing else we add the interest_id and name to the list
     * and if the user unselect such item, we remive it from the db 
     */

    if (interests[interestSelected].isSelected) {
      //adding the interests to the listOfUserInterest array
      _listOfUserInterest.add({
        'user_interest_id': interests[interestSelected].identifier,
        'user_interest_name': interests[interestSelected].itemName
      });
    }

    if (!interests[interestSelected].isSelected) {
      //removes the interests to the listOfUserInterest array

      _listOfUserInterest.removeWhere((e) =>
          e['user_interest_id'] == interests[interestSelected].identifier);
    }

    notifyListeners();
  }
}
