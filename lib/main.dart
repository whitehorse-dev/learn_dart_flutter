import 'package:flutter/material.dart';

void main(List<String> arguments) {
  // Sets

  /// Sets are just like maps but the donot have key value pairs rather only values
  /// Values are put in curly braces just like Maps.
  /// Set can only contain one instance of a particular value.   ie if we have
  /// 2 1, 1 then duplicates will get ignored as we have only unique values in a set.
  ///
  ///

  Set<int> mySet = {1, 2, 3, 3, 3};
  print(mySet.length);

  Map<String, dynamic> myMap = {
    'name': "Saurabh",
    'age': 30,
    'registered': true,
    'address': 'Delhi',
  };
}
