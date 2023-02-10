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

  /// We can also use loops and operators inside collections.
  /// eg Columns and Rows in the Flutter are made up of lists of widgets.
  /// These are helpful there.
  /// how to show logic to show signIn or SignOut button inside a collection?
  /// We can use a if statement inside the list!!! Special feature of dart!!
  ///
  bool isSignedIn = true;
  <String>[
    'this is a fake content',
    'how to show logic to show signIn or SignOut button inside a collection?',
    if (isSignedIn) 'Sign Out' else 'Sign In',
  ];

  /// We can have loops inside lists too!!
  /// We can have a loop running inside a list and add multiple elements to it!!
  ///
  final x = <String>[
    for (int i = 0; i < 10; i++) i.toString(),
    for (final number in [1, 2, 3, 4, 5]) number.toString(),
  ];
  print(x);

  final list1 = ['Hello', 'There'];
  final list2 = ['What', 'Up'];
  <String>[
    ...list1,
    ...list2,
  ];

  /// Concatenate Strings - List 1 and 2 using Spread Operator. ... 3 dots.
}
