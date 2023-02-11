// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
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

  final factoryAdmin = User.adminUser(false);
  print(factoryAdmin);

  /// Factories are quite useful for some of the libraries we will be using later on.
}

/// Sometimes we only want to extend a class and not instantiate is
///
/// Use ABSTRACT keyword.
/// Now the class will be prevented from being instantiated.
/// It can have fields, constructors, methods but can only be used in a subclass
/// and not directly.
///
/// When a class is abstract it doesnt need to provide implementation of its methods.
abstract class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  void signOut() {
    print('Signing Out.');
  }

// Special care to be taken while naming the factory, class name must start with small letter.
  // factory User.adminUser() {
  //   return AdminUser(specialAdminField: 123, firstName: 'a', lastName: 'bb');
  // }

  /// This is used because constructors always returns the instance of the same class
  /// but factory can be used to return instance of child class of super class. ie
  /// we can return AdminUser from User Class object.
  ///
  /// We can have some logic inside and return accordingly.
  ///
  /// Factory is also written SMALL factory.
  factory User.adminUser(bool admin) {
    if (admin) {
      return AdminUser(specialAdminField: 123, firstName: 'a', lastName: 'bb');
    } else {
      return User('a', 'bb'); // Got the error because of abstract class User.
    }
  }

  void
      myMethod(); // We will automatically get error on the extending classes to
  // implement this method.

  /// Concerete classes absolutely needs to have implementiton while the
  /// abstract classes donot need to have implementaion.
  ///
  /// Same goes for the property too.
  ///
  int get myProperty;
  // again asked to implement it.
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

  @override
  void myMethod() {
    // TODO: implement myMethod
  }

  @override
  // TODO: implement myProperty
  int get myProperty =>
      throw UnimplementedError(); // this will surely make app crash.
}
