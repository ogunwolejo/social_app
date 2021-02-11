// the interests login to select from.....
// create a class that contains the name of item, the imageUrl, a bool to check if it is selected

import 'dart:core';

import 'package:flutter/foundation.dart';

class InterestsToSelect {
  final int identifier;
  final String itemName;
  final String imageUrl;
  bool isSelected;

  InterestsToSelect({
    @required this.identifier,
    @required this.itemName,
    @required this.imageUrl,
    @required this.isSelected
  });
}

List<InterestsToSelect> interests = [
  InterestsToSelect(
    imageUrl: 'wristwatch.jpg',
    itemName: 'Food and nuts',
    identifier: 0,
    isSelected: false,
  ),
  InterestsToSelect(
    imageUrl: 'wristwatch.jpg',
    itemName: 'Technology',
    identifier: 1,
    isSelected: false,
  ),
  InterestsToSelect(
    imageUrl: 'wristwatch.jpg',
    itemName: 'Movies',
    identifier: 2,
    isSelected: false,
  ),
  InterestsToSelect(
    imageUrl: 'wristwatch.jpg',
    itemName: 'Fantasy',
    identifier: 3,
    isSelected: false,
  ),
  /*InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Economics'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Science'),
  InterestsToSelect(imageUrl: 'img.jpg', itemName: 'Sports'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'img.jpg', itemName: 'Family'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Relationships'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Food and nuts'),
  InterestsToSelect(imageUrl: 'wristwatch.jpg', itemName: 'Novels'),*/
];
