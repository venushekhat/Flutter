// Define two interfaces
abstract class InterfaceA {
  void myMethod();
}

abstract class InterfaceB {
  void myMethod();
}

// Implementing both interfaces in a class
class MyClass implements InterfaceA, InterfaceB {
  @override
  void myMethod() {
    print('Method implemented in MyClass');
  }
}

void main() {
  var obj = MyClass();
  obj.myMethod(); // Outputs: Method implemented in MyClass
}
