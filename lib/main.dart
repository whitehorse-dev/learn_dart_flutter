// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  final adminSaurabh =
      AdminUser(specialAdminField: 1, firstName: 'Saurabh', lastName: 'Pandey');
  // adminSaurabh.signOut();
  // print(adminSaurabh.fullName);

  // adminSaurabh.signOut();

  final adminAsUser = adminSaurabh as User;
  // adminAsUser.specialAdminField; // Not even showing up... error.

  /// now we can no longer access the admin specific fields on the adminAsUser.
  /// eg. specialAdminField
  ///
  /// But even now the full name is working properly!!
  ///
  print(adminAsUser.fullName);
  print(adminAsUser is AdminUser);
  print(adminAsUser is! AdminUser);

  /// There is a way to surpass and access the private field of admin user
  ///
  if (adminAsUser is AdminUser) print(adminAsUser.specialAdminField);
}

class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  void signOut() {
    print('Signing Out.');
  }
}

class AdminUser extends User {
  final double specialAdminField;

  AdminUser(
      {required this.specialAdminField,
      required String firstName,
      required String lastName})
      : super(firstName, lastName);

  @override
  String get fullName => '${super.fullName} is $specialAdminField';
  // we must add overrise annotation, even though it works w/o override.

  @override
  void signOut() {
    print('${super.fullName} is Signed Out Successfully');
    // @##OR ERROR
    /// Never remove the super.method from the implementaion because it might be having some
    /// code which is necessary.
    ///
    super.signOut();

    /// Normally this annotation is in other langauges but not built into the dart library and it is
    /// called - META - Must Call Super.
    /// This will have to be called on that method
    /// @mustCallSuper
    /// We need to add that package.
  }
}
