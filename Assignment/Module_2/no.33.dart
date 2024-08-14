// Define mixins
mixin MixinA {
  void methodA() {
    print('Method A');
  }
}

mixin MixinB {
  void methodB() {
    print('Method B');
  }
}

// Define a class that uses mixins
class MyClass with MixinA, MixinB {
  void methodC() {
    print('Method C');
  }
}

void main() {
  MyClass myClass = MyClass();
  myClass.methodA(); // Output: Method A
  myClass.methodB(); // Output: Method B
  myClass.methodC(); // Output: Method C
}
