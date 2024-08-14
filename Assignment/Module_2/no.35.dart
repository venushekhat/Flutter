class Parent {
  void _privateMethod() {
    print('Parent private method');
  }
}

class Child extends Parent {
  // This won't work for private methods
  // @override
  // void _privateMethod() {
  //   print('Child private method');
  // }
}
