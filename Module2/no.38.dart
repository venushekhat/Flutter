
class BaseClass {
  // This method is marked as @protected, so it's intended for use within
  // the library but won't be visible outside. Note that Dart does not
  // enforce visibility with @protected.
  void _protectedMethod() {
    print('This is a protected method');
  }

  // Private method to prevent overriding
  void _privateMethod() {
    print('This is a private method');
  }
}

class SubClass extends BaseClass {
  // You cannot override _privateMethod because it's private to BaseClass
  // _protectedMethod is not accessible directly from here, although in
  // the same library it could be used, but still not intended to be overridden
}
