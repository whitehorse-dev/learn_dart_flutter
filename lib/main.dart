import 'package:flutter/material.dart';

enum AccountType { free, premium, VIP }

/// Congratulations for creating a new Datatype ie ENUM!!

void main(List<String> arguments) {
  /// ENUMS
  /// 3 account types - can be represented with a string.
  ///
  final accountTyp = 'Free';
  // others can be premium and gold!!
  /// Problem is that we can still have typos and other errors. So ENUMS are there.
  /// Same goes for numbers such that 1 for premium, 2 for Gold.
  ///
  /// Enums are useful because they allow us to enumerate certain sequence of elemnts.
  ///
  ///
  final accountType = AccountType.premium;
  // no need to write here final AccountType accounttype - this can be ommited.
  AccountType.values[1]; // This will also give us the Premium instantly.

  // Enums in Dart are no where close to the power of Enums in Swift.

  //Enums can be used in Switch statements.

  switch (accountType) {
    case AccountType.free:
      print("0 Dollars");
      break;
    case AccountType.premium:
      print("Premium Dollars");
      break;
    case AccountType.VIP:
      print("VIP Value");
      break;
  }
}
