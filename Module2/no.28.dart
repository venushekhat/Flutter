// Define two interfaces
abstract class InterfaceA {
  void methodA();
}

abstract class InterfaceB {
  void methodB();
}

// Create a new interface that extends both InterfaceA and InterfaceB
abstract class CombinedInterface implements InterfaceA, InterfaceB {
  // This interface will require implementing methods from both InterfaceA and InterfaceB
}

// Implement the combined interface in a class
class MyClass implements CombinedInterface {
  @override
  void methodA() {
    print('Method A');
  }

  @override
  void methodB() {
    print('Method B');
  }
}

void main() {
  MyClass myClass = MyClass();
  myClass.methodA();
  myClass.methodB();
}
