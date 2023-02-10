import 'package:flutter/material.dart';

void main(List<String> arguments) {
  // Using Collections

  final names = ['Saurahb', 'Nair', 'Dutta', 'Aasckss'];
  names.map((e) => null);
  // this map function automatically takes in an anonymous function by default.
  // Iterable<T> map<T>(T Function(String) toElement)
  //Type: Iterable<int> Function(int Function(String))

// This function will run on each and every element of the list.
  final nameLength = names.map((name) => name.length);
  // WATCH!!! It returns an ITERABLE and not a list.
  // List we can call element using name[0] but this is not possible on iterable.

  /// To convert we can call toList();
  ///
  final nameLengthList = names.map((name) => name.length).toList();
  print(nameLengthList[0]);

  // Where instead of map which allows to filter by certain conditions.
  // returns Type: Iterable<String> Function(bool Function(String))
  // This doesnt change the type of iterable it returns while map changes to int.
  // Acc to the function statement the annonymous function inside must return a boolean.

  final nameListWhereFiltered =
      names.where((name) => name.length == 7).toList();
  print(nameListWhereFiltered[0]);
  print(nameListWhereFiltered[1]);
  print(nameListWhereFiltered);

  for (int i = 0; i < nameListWhereFiltered.length; i++) {
    print(nameListWhereFiltered[i]);
  }

  /// Other way to loop through the iterables eg FOR EACH
  ///
  for (final name in nameListWhereFiltered) {
    print(name);
  }

  /// Last way is to use a function which is present on the iterable ie forEach
  ///
  ///
  print("For Each Function Checked");
  // Press F2 and change the name of the element!!!
  nameListWhereFiltered.forEach((name) {
    print(name);
  });

  /// The above code can also be written as because signature
  /// The Type: void Function(void Function(String))
  /// This accepts any function and returns void. So directly write print to print each element.
  nameListWhereFiltered.forEach(print);
}
