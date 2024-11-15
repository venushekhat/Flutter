class Superclass {
  static void staticMethod() {
    print('Static method in Superclass');
  }
}

class Subclass extends Superclass {
  // This is hiding the superclass static method
  static void staticMethod() {
    print('Static method in Subclass');
  }

  // This is an instance method and doesn't override the static method
  void instanceMethod() {
    print('Instance method in Subclass');
  }
}

void main() {
  Superclass.staticMethod(); // Calls Superclass's static method
  Subclass.staticMethod(); // Calls Subclass's static method

  Subclass sub = Subclass();
  sub.instanceMethod(); // Calls Subclass's instance method
}
